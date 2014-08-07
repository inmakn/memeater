class Meme < ActiveRecord::Base

  validates_presence_of :speed, :level, :name, :spritesheet
  validates_uniqueness_of :name
  validates_numericality_of :speed, :level

  has_and_belongs_to_many :games

  # Paperclip stuff
  has_attached_file :spritesheet, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :spritesheet, :content_type => /\Aimage\/.*\Z/

end
