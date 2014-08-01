class Environment < ActiveRecord::Base

  validates_presence_of :top_layer, :mid_layer, :bottom_layer, :name
  validates_uniqueness_of :name

  has_many :games

end
