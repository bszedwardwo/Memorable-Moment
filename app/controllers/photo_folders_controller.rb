class PhotoFoldersController < ApplicationController
  def create
    folder_data = params[folder[]]
    folder_data.each do |d|
      photo1 = Photo.find(d)
      Folder.find(3).photos << photo1
    end
  end
end
