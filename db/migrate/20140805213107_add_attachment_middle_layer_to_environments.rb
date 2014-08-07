class AddAttachmentMiddleLayerToEnvironments < ActiveRecord::Migration
  def self.up
    change_table :environments do |t|
      t.attachment :middle_layer
    end
  end

  def self.down
    remove_attachment :environments, :middle_layer
  end
end
