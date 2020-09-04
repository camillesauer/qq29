class AvatarsController < ApplicationController
  def index
    @avatars = Avatar.all
  end

  def new
    @avatar = Avatar.new
  end

  def create
    @avatar = Avatar.new(avatar_params)
    if @avatar.save!
    redirect_to teams_path
    end
  end

  def edit
    @avatar = Avatar.find(params[:id])
  end

  def update
    @avatar = Avatar.find(params[:id])
    @avatar.update(avatar_params)
    redirect_to teams_path
  end

  def destroy
    @avatar = Avatar.find(params[:id])
    @avatar.destroy
    redirect_to teams_path
  end

  private

  def avatar_params
    params.require(:avatar).permit(:nom, :prenom, :img_url, :bio_url, :role, :category_id)
  end
end
