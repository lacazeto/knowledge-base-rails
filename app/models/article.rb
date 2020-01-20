# frozen_string_literal: true

class Article < ApplicationRecord
  has_many :questions

  validates :title, presence: true, length: { minimum: 3 }
  validates :author, presence: true, length: { maximum: 80 }
  validates :content_original, presence: true

  validates_uniqueness_of :title
end
