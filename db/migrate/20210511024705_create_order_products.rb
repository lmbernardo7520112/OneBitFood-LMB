class CreateOrderProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :order_products do |t|
      t.integer :quantity
      t.references :order, null: false, foreign_key: true
      t.string :product_references

      t.timestamps
    end
  end
end
