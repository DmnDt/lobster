class InvestmentsController < ApplicationController
   def create
    @investment.new(investment_params)
    @project = Project.find(params[:project_id])
    @investor = Investor.find(params[:investor_id])
    @investment.project = @project
    @investment.investor = @investor
    @investment.save # need to add the redirect
  end

  def mark_as_ter
    @investment = Investment.find(params[:id])
    @investment.update(status: 1)
    # redirect_to dashboard_path
  end
end
