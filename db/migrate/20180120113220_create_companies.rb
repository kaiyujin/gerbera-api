# coding: utf-8
class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :name, null: false
      t.string :url
      t.string :tel
      t.string :fax
      t.string :email
      t.string :zip_code
      t.integer :countly_id # 国
      t.integer :state_id   # 都市
      t.integer :city_id    # 市区町村
      t.string :address     # 住所
      t.integer :created_by
      t.integer :updated_by
      t.timestamps
    end
  end
end
