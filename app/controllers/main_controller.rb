# frozen_string_literal: true

class MainController < ApplicationController
  def show
    @articles = Article.last(3)
  end
end
