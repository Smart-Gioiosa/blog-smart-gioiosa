class AreaPrivata::SmartphotosController < AreaPrivata::BaseAreaPrivataController
  before_action :set_user
  before_action :set_smartphoto, only: [:edit, :update, :destroy]

    def show
    end

    def edit
    end

    def new
      if @user.smartphoto.nil?
      @smartphoto = @user.build_smartphoto
    else
      redirect_to area_privata_user_path(@user)
        flash[:success] = "Hai già caricato la tua foto"
    end
    end

    def create
      @smartphoto = @user.build_smartphoto(smartphoto_params)
        if @smartphoto.save
          redirect_to area_privata_user_path(@user)
          flash[:success] = "Photo has been created"
        else
          render 'new'
        end
    end

    def update
        if @smartphoto.update(smartphoto_params)
          flash[:success] = "Photo updated"
          redirect_to user_path(@user)
        else
          render 'edit'
        end
    end

    private
    def set_smartphoto
      @smartphoto =  @user.smartphoto.friendly.find(params[:id])
    end

     def set_user
       @user = current_user
     end

    def smartphoto_params
      params.require(:smartphoto).permit(:name, :surname, :category, :telephone, :email, :year, :place, :address, :birthday, :birthplace, :image, :privacy, :title, :image_cache)
    end
end
