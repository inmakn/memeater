class User < ActiveRecord::Base

  has_secure_password
  validates_presence_of :username
  validates_uniqueness_of :username

  has_many :games, dependent: :destroy

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

end
