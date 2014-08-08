class CreateItemPropertyItems < ActiveRecord::Migration
  def change
    create_table :item_property_items do |t|
      t.references :property_item, index: true
      t.references :item, index: true

      t.timestamps
    end
  end
end
