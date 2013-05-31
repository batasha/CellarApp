class TastingNote < ActiveRecord::Base
  attr_accessible :wine_id, :date, :note, :score, :user_id

  belongs_to :wine
  belongs_to :user

  validates :score, numericality: {
    less_than_or_equal_to: 100,
    greater_than_or_equal_to: 0
  }
end