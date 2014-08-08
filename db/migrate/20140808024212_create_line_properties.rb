class CreateLineProperties < ActiveRecord::Migration
  def change
    create_table :line_properties do |t|
      t.integer :targetable_id
      t.string :targetable_type
      t.string :name

      t.timestamps
    end
  end
end
