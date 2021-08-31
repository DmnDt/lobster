class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end
  def dashboard
    if current_user.investor.present? # Si user = investor
      @investments = Investment.where(investor: current_user.investor)
    elsif current_user.investee.present? # Si user = investee
      @investments = Investment.where(investee: current_user.investee)
    end
  end
end
