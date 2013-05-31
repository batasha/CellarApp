class Wine < ActiveRecord::Base
  attr_accessible :name, :country, :color, :vintage, :quantity, :user_id

  has_many :tasting_notes
  has_many :storage_locations
  has_many :bins, through: :storage_locations
  belongs_to :user

  validates :vintage, allow_nil: true
end