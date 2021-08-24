class ProjectsController < ApplicationController
  def index
    @projects= Project.all
  end
  def show
    @project.find(params[:id])
  end
end
