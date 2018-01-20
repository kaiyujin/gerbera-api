class CreateReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations do |t|
      t.string :name, null: false
      t.integer :status_id, null: false, limit: 2
      t.datetime :date_time, null: false
      t.integer :stay_time, null: false, limit: 2
      t.integer :shop_id, null: false
      t.integer :persons, null: false, limit: 2
      t.integer :children, null: false, limit: 2
      t.integer :children, null: false, limit: 2
      t.integer :inflow_id, null: false
      t.integer :created_by
      t.integer :updated_by
      t.timestamps
    end
    add_index :reservations, [:shop_id, :date_time]
  end
end
