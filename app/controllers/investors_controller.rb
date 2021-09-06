class InvestorsController < ApplicationController
  def new # Definir instances accessible pour la page form
    @investor = Investor.new
    @user = current_user
  end

  def create # Ce qui se passe apres le submit du form Investor_new
    @investor = Investor.new(investor_params)
    @user = current_user
    @investor.user = @user

    if @investor.save!

      redirect_to root_path
    else
      render :new
    end
  end

  private

  def investor_params
    params.require(:investor).permit(:category, :corporate_name, :user_id, :investment_examples, :average_ticket, :thesis, :industries, :siret)
  end
end
