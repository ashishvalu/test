class CreateCategaries < ActiveRecord::Migration[6.0]
  def change
    create_table :categaries do |t|
      t.string :name

      t.timestamps
    end
  end
end
