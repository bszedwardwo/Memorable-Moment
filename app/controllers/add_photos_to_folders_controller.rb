class AddPhotosToFoldersController < ApplicationController
  def create
    folder_data = params[:folder_photo]
    folder_data.each do |d|
      photo = Photo.find(d)
    end
  end
end
