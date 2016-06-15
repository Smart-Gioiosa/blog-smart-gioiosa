class Admin::PostsController < Admin::BaseController
  before_action :set_post, only:[:show, :edit, :destroy, :update]

  def index
    @posts= Post.all
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    @post = Posts.new(post_params)
    if @post.save
      redirect_to admin_posts_path(@post)
      flash[:success] = "Post Create"
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @post.update_attributes(post_params)
      flash[:success] = "Post Aggiornato"
      redirect_to admin_post_path(@post)
    else
      render 'edit'
    end
  end


  def destroy
    @post.destroy
    flash[:success] = "Post Eliminato"
    redirect_to profile_user_beauty_center_posts_path(@user, @beauty_center)
  end


  private
  def set_post
    @post =  Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :body)
  end

end
