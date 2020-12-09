class ImagesController < ApplicationController
  def index
  end

  private

  def image_params
    params.require(:image).permit(:image).merge(user_id: current_user.id)
  end
end
