class User < ActiveRecord::Base

  has_secure_password
  validates_presence_of :username
  validates_uniqueness_of :username

  has_many :games, dependent: :destroy

  def update_high_score
    scores = self.games.map { |game| game.score }
    self.high_score = scores.max
    self.save
  end

end
