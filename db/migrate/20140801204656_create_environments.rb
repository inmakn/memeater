class CreateEnvironments < ActiveRecord::Migration
  def change
    create_table :environments do |t|
      t.string :name
      t.string :top_layer
      t.string :mid_layer
      t.string :bottom_layer

      t.timestamps
    end
  end
end
