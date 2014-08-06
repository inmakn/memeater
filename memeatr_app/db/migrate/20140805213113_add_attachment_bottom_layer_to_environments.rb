class AddAttachmentBottomLayerToEnvironments < ActiveRecord::Migration
  def self.up
    change_table :environments do |t|
      t.attachment :bottom_layer
    end
  end

  def self.down
    remove_attachment :environments, :bottom_layer
  end
end
