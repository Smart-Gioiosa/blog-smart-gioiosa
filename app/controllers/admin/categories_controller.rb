class Admin::CategoriesController < Admin::BaseController
  before_action :set_category, only:[:show, :edit, :destroy, :update]

  def index
    @categories= Category.all
  end

  def show
  end

  def edit
    render :show_form
  end

  def new
    @category = Category.new
    render :show_form
  end

  def create
    @category = Category.new(category_params)
    respond_to do |format|
      if @category.save
        format.html {redirect_to admin_categories_path}
        format.js {render :hide_form}
        flash[:success] = "Category has been created"
      else
        format.js {render :show_form}
      end
    end
  end

  def update
    respond_to do |format|
      if @category.update(category_params)
        flash[:success] = "Category updated"
        format.html {redirect_to admin_categories_path}
        format.js {render :hide_form}
      else
        format.js {render :show_form}
      end
    end
  end

  def destroy
    @category.destroy
    flash[:success] = "Category deleted"
    redirect_to admin_categories_path
  end



  private
  def set_category
    @category =  Category.friendly.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:name)
  end
end
