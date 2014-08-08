class AddPropertyIdToPropertyItem < ActiveRecord::Migration
  def change
    add_column :property_items, :property_id, :integer
  end
end
