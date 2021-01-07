class PhotoFoldersController < ApplicationController

  def create
    binding.pry
    if params.present?
    folder_data = params[:folder[]]
    folder_data.each do |d|
      photo = Photo.find(d)
      Folder.find(d.id).photos << photo
    end
    end
  end
end
