class AreaPrivata::UsersController <  AreaPrivata::BaseAreaPrivataController
  def show
    @user = current_user
    @smartphoto = @user.smartphoto
  end
end
