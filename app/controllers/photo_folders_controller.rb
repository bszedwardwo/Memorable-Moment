class PhotoFoldersController < ApplicationController
  def create
    folder_data = params[folder[]]
    folder_data.each do |d|
      photo = Photo.find(d)
      Folder.find(3).photos << photo
    end
  end
end
