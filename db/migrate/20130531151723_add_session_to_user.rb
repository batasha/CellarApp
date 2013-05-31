class AddSessionToUser < ActiveRecord::Migration
  def change
    add_column :users, :session_token, :string
    add_index :users, :login
    add_index :users, :session_token
  end
end
