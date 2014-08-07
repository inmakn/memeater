class User < ActiveRecord::Base

  has_secure_password
  validates_presence_of :username
  validates_uniqueness_of :username

  has_many :games, dependent: :destroy

end
