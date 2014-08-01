class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.string :image_url
      t.integer :hp

      t.timestamps
    end
  end
end
