class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :password_digest
      t.string :name
      t.string :email
      t.integer :shop_id #default shop_id
      t.integer :auth_type, limit: 2, null: false # 1:admin 2:cs 3:manager 4:shop
      t.integer :created_by
      t.integer :updated_by
      t.timestamps
    end
  end
end
