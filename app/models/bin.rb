class Bin < ActiveRecord::Base
  attr_accessible :number, :capacity, :user_id

  belongs_to :user
  has_many :storage_locations
  has_many :wines, through: :storage_locations

  validates :number, uniqueness: {scope: :user}
end