class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.references :restaurant, foreign_key: true
      t.string :name
      t.string :item
      t.decimal :cost

      t.timestamps
    end
  end
end