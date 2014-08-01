class Game < ActiveRecord::Base

  validates_presence_of :score, :user_id
  validates_numericality_of :score, :user_id

  belongs_to :user, :character, :environment
  has_and_belongs_to_many :memes

end
