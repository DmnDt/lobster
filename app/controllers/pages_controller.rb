class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end
  def dashboard
    @investments = Investment.where(investor: current_user.investor)
  end
end
