class AddSpritesheetToMemes < ActiveRecord::Migration
  def self.up
    add_attachment :memes, :spritesheet
  end

  def self.down
    remove_attachment :memes, :spritesheet
  end
end
