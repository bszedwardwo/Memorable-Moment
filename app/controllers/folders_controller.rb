class FoldersController < ApplicationController
  def index
    @folder = Folder.all.order('created_at DESC')
  end

  def new
    @folder = Folder.new
  end

  def create
    @folder = Folder.new(folder_params)
    if @folder.save
      redicrect_to root_path
    else
      render :new
    end
  end

  private

  def folder_params
    params.require(:folder).permit(:name).merge(user_id: current_user.id)
  end
end
