class RemovePhotoUrlFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :photo_url
  end
end
