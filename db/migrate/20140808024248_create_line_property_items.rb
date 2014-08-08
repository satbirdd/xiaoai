class CreateLinePropertyItems < ActiveRecord::Migration
  def change
    create_table :line_property_items do |t|
      t.string :name
      t.references :line_property

      t.timestamps
    end
  end
end
