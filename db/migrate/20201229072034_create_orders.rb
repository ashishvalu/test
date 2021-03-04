class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.references :user, null: false, foreign_key: true
      t.string :address
      t.string :city, limit: 100
      t.string :state, limit: 50
      t.string :postal_code, limit: 6
      t.string :country, limit: 50
      t.string :phone, limit: 15
      t.decimal :total_price
      t.string :payment_mode, limit: 20
      t.string :payment_id, limit: 20

      t.timestamps
    end
  end
end
