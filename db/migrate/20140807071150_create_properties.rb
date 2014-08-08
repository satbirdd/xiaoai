class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :name
      t.integer :targetable_id
      t.string :targetable_type

      t.timestamps
    end
  end
end
