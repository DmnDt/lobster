class InvesteesController < ApplicationController
  def new
    @investee = Investee.new
    @user = current_user
  end

  def create
    @investee = Investee.new(investee_params)
    @investee.api_data = JSON.parse(@investee.api_data)
    @user = current_user
    @investee.user = @user

    if @investee.save
      redirect_to new_project_path
    else
      render :new
    end
  end

  private

  def investee_params
    strong_params = params.require(:investee).permit(:SIRET, :nom_entreprise, :domaine_activite, :user_id, :address, :chiffre_affaires, :taux_croissance_chiffre_affaires, :marge_brute, :taux_marge_brute, :excedent_brut_exploitation, :taux_marge_EBITDA, :api_data)
    strong_params[:nom_entreprise] = strong_params[:nom_entreprise].capitalize
    strong_params
  end
end
