class Game < ActiveRecord::Base

  validates_presence_of :score, :user_id
  validates_numericality_of :score, :user_id

end
