class AddSpritesheetToCharacters < ActiveRecord::Migration
  def self.up
    add_attachment :characters, :spritesheet
  end

  def self.down
    remove_attachment :characters, :spritesheet
  end
end
