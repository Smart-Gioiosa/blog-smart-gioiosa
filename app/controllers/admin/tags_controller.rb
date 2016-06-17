class Admin::TagsController < Admin::BaseController
  before_action :set_tag, only:[:show, :edit, :destroy, :update]

  def index
    @tags= Tag.all
  end

  def show
  end

  def edit
    render :show_form
  end

  def new
    @tag = Tag.new
    render :show_form
  end

  def create
    @tag = Tag.new(tag_params)
    respond_to do |format|
      if @tag.save
        format.html {redirect_to admin_tags_path}
        format.js {render :hide_form}
        flash[:success] = "Tag has been created"
      else
        format.js {render :show_form}
      end
    end
  end

  def update
    respond_to do |format|
      if @tag.update(tag_params)
        flash[:success] = "Tag updated"
        format.html {redirect_to admin_tags_path}
        format.js {render :hide_form}
      else
        format.js {render :show_form}
      end
    end
  end

  def destroy
    @tag.destroy
    flash[:success] = "Tag deleted"
    redirect_to admin_tags_path
  end



  private
  def set_tag
    @tag =  Tag.friendly.find(params[:id])
  end

  def tag_params
    params.require(:tag).permit(:name)
  end
end
