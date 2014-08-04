class Character < ActiveRecord::Base

  validates_presence_of :name, :image_url, :hp
  validates_uniqueness_of :name
  validates_numericality_of :hp

  has_many :games

end
