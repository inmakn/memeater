class User < ActiveRecord::Base
  has_secure_password
  validates_presence_of :username, :high_score
  validates_numericality_of :high_score
  validates_uniqueness_of :username
end
