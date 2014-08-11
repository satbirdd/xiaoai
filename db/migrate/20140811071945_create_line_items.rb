class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.references :item, index: true
      t.integer :inventory
      t.decimal :price, precision: 10, scale: 2

      t.timestamps
    end
  end
end
