class AddGamesPlayedToUsers < ActiveRecord::Migration
  def change
    add_column :users, :num_games_played, :integer
  end
end
