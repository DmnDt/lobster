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
    @projects = Project.all
    if params.dig(:search, :category).present?
      @projects = Project.search_by_name_and_industry(params[:search][:category].join(" "))
    end
  end

  def show
    @investment = Investment.new
    @project = Project.find(params[:id])
    @investor = Investor.find_by(user: current_user)
  end

  private

  def project_params
    params.require(:project).permit(:name, :valuation, :industry, :conversion_rate, :coupon, :conversion_date, :status, :total_amount, :financing_thesis, :investee_id)
  end
end
