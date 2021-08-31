class ProjectsController < ApplicationController
  def new
    @project = Project.new
    @user = current_user
  end

  def create
    @project = Project.new(project_params)
    @investee = Investee.find_by(user: current_user)
    @project.investee = @investee
    if @project.save
      redirect_to root_path
    else
      render :new
    end
  end

  def update
    @project = Project.find(params[:id])
    params[:project][:documents].each do |document|
      @project.documents.attach(document)
    end
    redirect_to data_room_project_path(@project)
  end

  def index
    @projects = Project.all
    if params.dig(:search, :category).present?
      @projects = Project.search_by_name_and_industry(params[:search][:category].join(" "))
    end
  end

  def show
    @team_members = %w(Jean-Michel Jean-Claude Roberta) #generate array with API PAPPERS
    @investors_list = ['Xavier Niel', 'Denis Fayolle', 'Pierre-Edouard Stérin']
    @investment = Investment.new
    @project = Project.find(params[:id])
    @investor = Investor.find_by(user: current_user)
  end

  def data_room
    @project = Project.find(params[:id])
    @url_docusign = DocusignService.new.get_url["url"]
    # raise
  end

  private

  def project_params
    params.require(:project).permit(:name, :valuation, :industry, :conversion_rate,
      :coupon, :conversion_date, :status, :total_amount, :financing_thesis, :investee_id, documents: [])
  end
end
