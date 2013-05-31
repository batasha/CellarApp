class CreateWines < ActiveRecord::Migration
  def change
    create_table :wines do |t|
      t.string :name
      t.string :country
      t.string :color
      t.integer :vintage
      t.integer :quantity
      t.timestamps
    end
  end
end
