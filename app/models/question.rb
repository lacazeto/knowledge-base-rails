# frozen_string_literal: true

class Question < ApplicationRecord
  belongs_to :article

  validates :title, presence: true, length: { minimum: 3 }
  validates :author, presence: true
  validates :content, presence: true

  validates_uniqueness_of :title
end
