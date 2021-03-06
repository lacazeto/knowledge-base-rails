# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20_200_121_211_554) do
  create_table 'articles', force: :cascade do |t|
    t.string 'title', null: false
    t.string 'author', null: false
    t.text 'content_original', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'de_translations', force: :cascade do |t|
    t.integer 'article_id', null: false
    t.string 'title_de'
    t.text 'content_de'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['article_id'], name: 'index_de_translations_on_article_id'
  end

  create_table 'questions', force: :cascade do |t|
    t.string 'title', null: false
    t.text 'content', null: false
    t.string 'author', null: false
    t.integer 'article_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['article_id'], name: 'index_questions_on_article_id'
  end

  add_foreign_key 'de_translations', 'articles'
  add_foreign_key 'questions', 'articles'
end
