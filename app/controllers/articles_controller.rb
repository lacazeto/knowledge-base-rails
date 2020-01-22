# frozen_string_literal: true

class ArticlesController < ApplicationController
  # GET
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def show
    @article = Article.find_by(id: params[:id].to_i)

    return content_not_found unless @article

    return unless params[:locale] == 'de'

    @article.title = @article.de_translation.title_de
    @article.content_original = @article.de_translation.content_de
  end

  def edit
    @article = Article.find_by(id: params[:id].to_i)

    return content_not_found unless @article
  end

  # POST
  def create
    @article = Article.new(article_params_create)
    @article.author = @article.author.split.map(&:capitalize).join(' ')

    respond_to do |format|
      if @article.save
        @article.update_german_translation

        format.html { redirect_to @article, notice: 'Article was successfully created.' }
        format.json { render @article, status: :created, location: @article }
      else
        format.html { render :new }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT
  def update
    @article = Article.find_by(id: params[:id].to_i)

    respond_to do |format|
      if @article
        if @article.update(article_params_update)
          @article.update_german_translation

          format.html { redirect_to @article, notice: 'Article was successfully updated.' }
          format.json { render @article, status: :updated, location: @article }
        else
          format.html { redirect_back fallback_location: @article }
          format.json { render json: @article.errors, status: :unprocessable_entity }
        end
      else
        format.html { redirect_back fallback_location: @article }
        format.json { head :no_content }
      end
    end
  end

  # DELETE
  def destroy
    # TODO
  end

  private

  def article_params_create
    params.require(:article).permit(:title, :content_original, :author)
  end

  def article_params_update
    params.require(:article).permit(:title, :content_original)
  end
end
