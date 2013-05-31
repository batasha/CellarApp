class User < ActiveRecord::Base
  attr_accessible :login, :password, :password_confirmation, :fname, :lname
  has_secure_password

  has_many :wines
  has_many :bins
  has_many :storage_locations, through: :bins
  has_many :tasting_notes

  validates :login, uniqueness: true
  validates :password, presence: true, length: {minimum: 6}
  validates :password_confirmation, presence: true
end