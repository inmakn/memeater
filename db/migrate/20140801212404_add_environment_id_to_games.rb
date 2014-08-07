class AddEnvironmentIdToGames < ActiveRecord::Migration
  def change
    add_column :games, :environment_id, :integer
  end
end
