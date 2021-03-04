class CreateOrderDetalis < ActiveRecord::Migration[6.0]
  def change
    create_table :order_detalis do |t|
      t.references :order, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true
      t.decimal :price

      t.timestamps
    end
  end
end
