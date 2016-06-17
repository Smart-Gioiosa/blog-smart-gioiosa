class Admin::ProjectsController < Admin::BaseController
  before_action :set_project, only:[:show, :edit, :destroy, :update]

  def index
    @projects= Project.all
  end

  def show
  end

  def edit
    render :show_form
  end

  def new
    @project = Project.new
    render :show_form
  end

  def create
    @project = Project.new(project_params)
    respond_to do |format|
      if @project.save
        format.html {redirect_to admin_projects_path}
        format.js {render :hide_form}
        flash[:success] = "Project has been created"
      else
        format.js {render :show_form}
      end
    end
  end

  def update
    respond_to do |format|
      if @project.update(project_params)
        flash[:success] = "Project updated"
        format.html {redirect_to admin_projects_path}
        format.js {render :hide_form}
      else
        format.js {render :show_form}
      end
    end
  end

  def destroy
    @project.destroy
    flash[:success] = "Project deleted"
    redirect_to admin_projects_path
  end



  private
  def set_project
    @project =  Project.friendly.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:title, :description, :image_preview, :remove_image_preview)
  end

end
