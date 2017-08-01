class SmartphotosController < ApplicationController
  def regolamento
  end

  def index
    @photos = Smartphoto.all
  end

  def show
    @photo = Smartphoto.friendly.find(params[:id])
  end
end
