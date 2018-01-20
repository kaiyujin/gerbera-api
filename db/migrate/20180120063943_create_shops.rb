# coding: utf-8
class CreateShops < ActiveRecord::Migration[5.1]
  def change
    create_table :shops do |t|
      t.string :name, null: false
      t.integer :company_id, null: false
      t.integer :genre_id, null: false
      t.integer :section_id, null: false
      t.string :url
      t.string :tel
      t.string :fax
      t.string :email
      t.string :zip_code
      t.integer :countly_id # 国
      t.integer :state_id   # 都市
      t.integer :city_id    # 市区町村
      t.string :address     # 住所
      t.integer :sort_no, default: 1, null: false # 表示順
      t.integer :test_flg, default: 0, limit: 1
      t.integer :created_by
      t.integer :updated_by
      t.datetime :closed_at
      t.timestamps
    end
  end
end
