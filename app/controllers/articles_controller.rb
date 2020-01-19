# frozen_string_literal: true

class ArticlesController < ApplicationController
  # GET
  def articles
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def show
    @article = Article.find(params[:id].to_i)
  end

  def edit
    @article = Article.find(params[:id].to_i)
  end

  # POST
  def create
    @article = Article.new(article_params)

    respond_to do |format|
      if @article.save
        format.html { redirect_to @article, notice: 'Article was successfully created.' }
        render json: @article, status: :created
      else
        format.html { render :new }
        render json: { errors: @article.errors }, status: :unprocessable_entity
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
