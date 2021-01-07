class PhotoFoldersController < ApplicationController

  def create
    binding.pry
    folder_data = params[:folder_photo]
    folder_data.each do |d|
      photo = Photo.find(d)
      # Folder.find(3).photos << photo
    end
  end
end
