class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end
  def dashboard
    @investments = Investment.where(investor: current_user.investor)
  end

  def docusign
    # render json: params.to_json
    @url = DocusignService.new.get_url["url"]
    raise
  end
end
