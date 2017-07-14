class Admin::PostsController < Admin::BaseController
  before_action :set_post, only:[:show, :edit, :destroy, :update]

  def index
    @posts= Post.all
  end

  def show
  end

  def edit
    render :show_form
  end

  def new
    @post = Post.new
    render :show_form
  end

  def create
    @post = Post.new(post_params)
    respond_to do |format|
      if @post.save
        format.html {redirect_to admin_posts_path}
        format.js {render :hide_form}
        flash[:success] = "Post has been created"
      else
        format.js {render :show_form}
      end
    end
  end

  def update
    respond_to do |format|
      if @post.update(post_params)
        flash[:success] = "Post updated"
        format.html {redirect_to admin_posts_path}
        format.js {render :hide_form}
      else
        format.js {render :show_form}
      end
    end
  end

  def destroy
    @post.destroy
    flash[:success] = "Post deleted"
    redirect_to admin_posts_path
  end



  private
  def set_post
    @post =  Post.friendly.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:pubblished, :title, :body, :image_preview, :remove_image_preview, { tag_ids:[]}, { category_ids:[]})
  end

end
