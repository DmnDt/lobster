class InvestmentsController < ApplicationController
  def create
    @investment.new(investment_params)
    @project = Project.find(params[:project_id])
    @investor = Investor.find(params[:investor_id])
    @investment.project = @project
    @investment.investor = @investor
    if @investment.save!
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def mark_as_ter
    @investment = Investment.find(params[:id])
    @investment.update(status: 1)
    # redirect_to dashboard_path
  end

  private

  def investment_params
    params.require(:investment).permit(:amount, :status, :investor_id, :project_id)
  end
end
