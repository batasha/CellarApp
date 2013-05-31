class CreateTastingNotes < ActiveRecord::Migration
  def change
    create_table :tasting_notes do |t|
      t.integer :wine_id
      t.date :date
      t.text :note
      t.integer :score
      t.timestamps
    end
    add_index :tasting_notes, :wine_id
  end
end
