class CreatePropertyItems < ActiveRecord::Migration
  def change
    create_table :property_items do |t|
      t.string :name

      t.timestamps
    end
  end
end
