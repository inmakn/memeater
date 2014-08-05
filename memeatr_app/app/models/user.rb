class User < ActiveRecord::Base

  has_secure_password
  validates_presence_of :username, :photo_url
  validates_uniqueness_of :username

  has_many :games, dependent: :destroy
end
