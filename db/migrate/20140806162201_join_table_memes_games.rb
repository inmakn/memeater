class JoinTableMemesGames < ActiveRecord::Migration
  def change
    create_join_table :memes, :games
  end
end
