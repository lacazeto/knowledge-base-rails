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
    @article = Article.find(params[:id].to_i)
    byebug
  end

  def edit
    @article = Article.find(params[:id].to_i)
  end

  # POST
  def create
    @article = Article.new(article_params)
    @article.author = @article.author.split.map(&:capitalize).join(' ')

    respond_to do |format|
      if @article.save
        format.html { redirect_to @article, notice: 'Article was successfully created.' }
        format.json { render @article, status: :created, location: @article }
      else
        format.html { render :new }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT
  def update; end

  # DELETE
  def destroy; end

  private

  def article_params
    params.require(:article).permit(:title, :content, :author)
  end
end
