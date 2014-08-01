class Meme < ActiveRecord::Base

  validates_presence_of :image_url, :speed, :level, :name, :link_url
  validates_uniqueness_of :name
  validates_numericality_of :speed, :level

  has_and_belongs_to_many :games

end
