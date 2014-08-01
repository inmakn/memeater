class CreateJoinTableMemeGame < ActiveRecord::Migration
  def change
    create_join_table :memes, :games do |t|
      t.index [:meme_id, :game_id]
      t.index [:game_id, :meme_id]
    end
  end
end
