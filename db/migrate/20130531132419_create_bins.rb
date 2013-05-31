class CreateBins < ActiveRecord::Migration
  def change
    create_table :bins do |t|
      t.string :number # bin numbers are often 'A1, B3' etc.
      t.integer :capacity
      t.timestamps
    end
  end
end
