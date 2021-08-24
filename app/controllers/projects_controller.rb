class ProjectsController < ApplicationController
  def new
    @project = Project.new
    @user = current_user
  end

  def create
    @project = Project.new(project_params)
    @user = current_user
    @project.user = @user
    if @project.save!
      redirect_to root_path
    else
      render :new
    end
  end

  def index
    @projects= Project.all
  end

  def show
    @project= Project.find(params[:id])
  end

  private

  def project_params
    params.require(:project).permit(:valuation, :conversion_rate, :coupon, :conversion_date, :status, :total_amount, :financing_thesis, :investee_id)
  end
end
