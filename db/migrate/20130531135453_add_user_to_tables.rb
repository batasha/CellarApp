class AddUserToTables < ActiveRecord::Migration
  def change
    add_column :wines, :user_id, :integer
    add_index :wines, :user_id

    add_column :bins, :user_id, :integer
    add_index :bins, :user_id

    add_column :tasting_notes, :user_id, :integer
    add_index :tasting_notes, :user_id
  end
end
