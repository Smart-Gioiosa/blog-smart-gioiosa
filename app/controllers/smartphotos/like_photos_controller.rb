class Smartphotos::LikePhotosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_smartphoto
  
  def create
    @photo.like_photos.where(user_id: current_user.id).first_or_create
 
    respond_to do |format|
      format.html { redirect_to :back }
      format.js {head :no_content}
    end

  end

  def destroy
    @photo.like_photos.where(user_id: current_user.id).destroy_all
    respond_to do |format|
      format.html { redirect_to :back}
      format.js {head :no_content}
    end

  end

  private

    def set_smartphoto
      @photo = Smartphoto.friendly.find(params[:smartphoto_id])
    end
end
