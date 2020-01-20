# frozen_string_literal: true

class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :title, null: false
      t.string :author, null: false
      t.text :content_original, null: false
      t.text :translation_de, default: nil, null: true

      t.timestamps
    end
  end
end
