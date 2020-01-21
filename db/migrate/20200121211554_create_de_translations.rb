# frozen_string_literal: true

class CreateDeTranslations < ActiveRecord::Migration[6.0]
  def change
    create_table :de_translations do |t|
      t.references :article, null: false, foreign_key: true
      t.string :title_de
      t.text :content_de

      t.timestamps
    end
  end
end
