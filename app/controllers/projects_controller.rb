class ProjectsController < ApplicationController

	def index
		@projects = Project.all
	end

	def new
	end

	def create
		@project = Project.new(post_params)
		@project.save
		redirect_to @project
	end

	def show
  		@project = Project.find(params[:id])
    end

    def destroy
	  @project = Project.find(params[:id])
	  @project.destroy
	 
	  redirect_to projects_path
	end

	private
    def post_params
      params.require(:project).permit(:project_name)
    end

end
