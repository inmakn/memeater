class RemoveNumGamesPlayedFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :num_games_played
  end
end
