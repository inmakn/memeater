class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :score
      t.belongs_to :user
    end
  end
end
