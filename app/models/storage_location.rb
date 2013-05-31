class StorageLocation < ActiveRecord::Base
  attr_accessible :wine_id, :bin_id, :quantity, :user_id

  belongs_to :wine
  belongs_to :bin
  belongs_to :user

  validates :quantity, numericality: {
    less_than_or_equal_to: bin.capacity
  }
end