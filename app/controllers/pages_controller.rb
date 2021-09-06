class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def investor_finish
  end

  def investee_finish
  end

  def dashboard
    if current_user.investor.present? # Si user = investor
      @interested_investments = Investment.where(investor: current_user.investor).interested
      @pending_investments = Investment.where(investor: current_user.investor).pending
      @validated_investments = Investment.where(investor: current_user.investor).validated
    elsif current_user.investee.present? # Si user = investee
      @projects = Project.where(investee: current_user.investee)
      # @investments = @projects.map{ |project| project.investments }.flatten  // Ligne 20 et 21 font la meme chose, 2 solutions possibles
      @investments= Investment.includes(:project).where(projects: {investee: current_user.investee})
    end
  end

end
