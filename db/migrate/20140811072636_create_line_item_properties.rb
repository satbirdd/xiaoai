class CreateLineItemProperties < ActiveRecord::Migration
  def change
    create_table :line_item_properties do |t|
      t.references :line_item, index: true
      t.references :item_property_item, index: true

      t.timestamps
    end
  end
end
