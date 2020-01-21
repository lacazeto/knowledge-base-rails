# frozen_string_literal: true

class ApplicationController < ActionController::Base
  def content_not_found
    render file: "#{Rails.root}/public/404", layout: true, status: 404
  end
end
