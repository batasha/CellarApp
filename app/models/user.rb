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

  def new_session_token
    self.update_attribute(:session_token, SecureRandom.hex)
  end
end