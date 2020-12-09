class PhotosController < ApplicationController
  def new
    @image = Image.new
  end

  def create
    binding.pry
    @image = Image.new
    if @image.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def image_params
    params.require(:ptoho).permit(:image).merge(user_id: current_user.id)
  end
end
