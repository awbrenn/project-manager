class IssuesController < ApplicationController
	def create
		@project = Project.find(params[:project_id])
		@issue = @project.issues.create(params[:issue].permit(:identity, :title,
			:description, :status))
		redirect_to project_path(@project)
	end

	def edit
		@project = Project.find(params[:project_id])
		@issue = @project.issues.find(params[:id])
	end

	def update
		@project = Project.find(params[:project_id])
		@issue = @project.issues.find(params[:id])

		@issue.update(params[:issue].permit(:title, :description, :status))
		redirect_to @project
	end

	def destroy
		@project = Project.find(params[:project_id])
		@issue = @project.issues.find(params[:id])

		@issue.delete
		redirect_to @project
	end

end
