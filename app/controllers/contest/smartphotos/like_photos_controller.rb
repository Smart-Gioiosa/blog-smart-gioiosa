class Smartphotos::LikePhotosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_smartphoto

  def create
    @smartphoto.likephotos.where(user_id: current_user.id).first_or_create

    respond_to do |format|
      format.html { redirect_to @smartphoto }
      format.js
    end
  end

  def destroy
    @smartphto.likephotos.where(user_id: current_user.id).destroy_all

    respond_to do |format|
      format.html { redirect_to @smartphoto }
      format.js
    end
  end

  private

    def set_smartphoto
      @smartphoto = Smartphoto.friendly.find(params[:smartphoto_id])
    end
end
