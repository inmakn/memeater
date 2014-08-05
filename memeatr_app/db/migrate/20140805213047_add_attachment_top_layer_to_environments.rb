class AddAttachmentTopLayerToEnvironments < ActiveRecord::Migration
  def self.up
    change_table :environments do |t|
      t.attachment :top_layer
    end
  end

  def self.down
    remove_attachment :environments, :top_layer
  end
end
