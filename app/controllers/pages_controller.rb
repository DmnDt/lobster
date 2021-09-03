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
      # @investments = @projects.map{ |project| project.investments }.flatten
      @investments= Investment.includes(:project).where(projects: {investee: current_user.investee})
    end
  end

  # def docusign
  #   # render json: params.to_json
  #   @url = DocusignService.new.get_url["url"]
  #   raise
  # end
end
