# frozen_string_literal: true

class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :title
      t.text :content
      t.string :author
      t.references :article, null: false, foreign_key: true

      t.timestamps
    end
  end
end
