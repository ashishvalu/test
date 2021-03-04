class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.date :brith_date
      t.string :phone, limit: 15
      t.string :gender, limit: 1

      t.timestamps
    end
  end
end
