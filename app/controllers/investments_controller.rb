class InvestmentsController < ApplicationController
  def create
    @investment = Investment.new(investment_params) #Créé l'invest
    @project = Project.find(params[:project_id]) # Retrouve le projet dans lequel on invest
    @investor = Investor.find_by(user: current_user) # Retrouve l'investor
    @investment.project = @project # Link au projet
    @investment.investor = @investor # Link l'investor
    if @investment.save!
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def mark_as_ter # Fonction à appeler pour changer le statut de l'investment
    @investment = Investment.find(params[:id])
    @investment.update(status: 1)
    # redirect_to dashboard_path
  end

  private

  def investment_params
    params.require(:investment).permit(:amount, :status, :investor_id, :project_id)
  end
end
