# frozen_string_literal: true

class Article < ApplicationRecord
  has_many :questions
  has_one :de_translation

  validates :title, presence: true, length: { minimum: 3 }
  validates :author, presence: true, length: { maximum: 80 }
  validates :content_original, presence: true

  validates_uniqueness_of :title

  def update_german_translation
    de_translation&.destroy
    save_to_german
  end

  def save_to_german
    self.de_translation = DeTranslation.new(article_id: id, title_de: german_title, content_de: german_content)
  end

  def german_title
    TranslationService::Articles.germanize(title)
  end

  def german_content
    TranslationService::Articles.germanize(content_original)
  end
end
