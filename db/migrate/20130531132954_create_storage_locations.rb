class CreateStorageLocations < ActiveRecord::Migration
  def change
    create_table :storage_locations do |t|
      t.integer :wine_id
      t.integer :bin_id
      t.integer :quantity
    end
    add_index :storage_locations, :wine_id
    add_index :storage_locations, :bin_id
  end
end
