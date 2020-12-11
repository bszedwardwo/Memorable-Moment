class CreatePhotoFolders < ActiveRecord::Migration[6.0]
  def change
    create_table :photo_folders do |t|

      t.timestamps
    end
  end
end
