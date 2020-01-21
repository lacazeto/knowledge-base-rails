# frozen_string_literal: true

class DeTranslation < ApplicationRecord
  belongs_to :article

  validates :title_de, presence: true
  validates :content_de, presence: true
end
