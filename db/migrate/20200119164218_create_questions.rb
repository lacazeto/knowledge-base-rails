# frozen_string_literal: true

class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :title, null: false
      t.text :content, null: false
      t.string :author, null: false
      t.references :article, null: false, foreign_key: true

      t.timestamps
    end
  end
end
