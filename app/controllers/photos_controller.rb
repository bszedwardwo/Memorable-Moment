class PhotosController < ApplicationController
  def index
    @user = User.find(current_user.id)
    @photo = @user.photos
    @folder = Folder.find(params[:folder_id])
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
    if @photo.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def photo_params
    params.require(:photo).permit(:image, :text).merge(user_id: current_user.id)
  end
end
