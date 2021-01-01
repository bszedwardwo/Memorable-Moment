class CreatePhotoFolders < ActiveRecord::Migration[6.0]
  def change
    create_table :photo_folders do |t|
      t.references :photo,   null: false, foreign_key: true
      t.references :folder,  null: false, foreign_key: true
      t.timestamps
    end
  end
end
