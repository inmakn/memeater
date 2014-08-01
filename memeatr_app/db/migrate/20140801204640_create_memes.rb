class CreateMemes < ActiveRecord::Migration
  def change
    create_table :memes do |t|
      t.string :name
      t.string :image_url
      t.string :link_url
      t.integer :speed
      t.integer :level

      t.timestamps
    end
  end
end
