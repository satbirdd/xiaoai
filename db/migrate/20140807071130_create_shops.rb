class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :name
      t.references :user, index: true

      t.timestamps
    end
  end
end
