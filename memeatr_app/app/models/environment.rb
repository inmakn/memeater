class Environment < ActiveRecord::Base

  validates_presence_of :top_layer, :middle_layer, :bottom_layer, :name
  validates_uniqueness_of :name

  has_many :games

  # Paperclip stuff
  has_attached_file :top_layer, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :top_layer, :content_type => /\Aimage\/.*\Z/

  has_attached_file :middle_layer, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :middle_layer, :content_type => /\Aimage\/.*\Z/

  has_attached_file :bottom_layer, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :bottom_layer, :content_type => /\Aimage\/.*\Z/

end
