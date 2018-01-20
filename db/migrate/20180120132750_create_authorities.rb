# coding: utf-8
class CreateAuthorities < ActiveRecord::Migration[5.1]
#  1桁目: 予約登録,  2桁目: 予約参照,  3桁目: 予約変更,  4桁目: 予約削除
#  5桁目: 顧客登録,  6桁目: 顧客参照,  7桁目: 顧客変更,  8桁目: 顧客削除
#  9桁目: 店舗登録, 10桁目: 店舗参照 ,11桁目: 店舗変更, 12桁目: 店舗削除
# 13桁目: レポート
  def change
    create_table :authorities do |t|
      t.integer :user_id, null: false
      t.integer :shop_id, null: false
      t.string :authority_bit, null: false, default: '1111111101001'
      t.integer :created_by
      t.integer :updated_by
      t.timestamps
    end
    add_index :authorities ,:user_id
    add_index :authorities ,:shop_id
  end
end
