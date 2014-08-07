class User < ActiveRecord::Base

  has_secure_password
  validates_presence_of :username
  validates_uniqueness_of :username
  validates_numericality_of :high_score

  has_many :games, dependent: :destroy

end
