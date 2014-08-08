class CreateItemProperties < ActiveRecord::Migration
  def change
    create_table :item_properties do |t|
      t.references :item
      t.references :property, index: true
      t.string :alias

      t.timestamps
    end
  end
end
