class Game < ActiveRecord::Base

  validates_presence_of :user_id
  validates_numericality_of :user_id

  belongs_to :user
  belongs_to :character
  belongs_to :environment
  has_and_belongs_to_many :memes

end
