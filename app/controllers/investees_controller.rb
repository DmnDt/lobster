class InvesteesController < ApplicationController
  def new
    @investee = Investee.new
    @user = current_user
  end

  def create
    @investee = Investee.new(investee_params)
    @investee.api_data = JSON.parse(@investee.api_data) # On transforme la string api en JSON (JSON transformé en string au prealable en string dans app/javascript/controllers/fill_controller.js)
    @user = current_user
    @investee.user = @user # Relier un user à l'investee créé

    if @investee.save
      redirect_to new_project_path # Si données valides
    else
      render :new # Si données invalides
    end
  end

  private

  def investee_params
    strong_params = params.require(:investee).permit(:SIRET, :nom_entreprise, :domaine_activite, :user_id, :address, :chiffre_affaires, :taux_croissance_chiffre_affaires, :marge_brute, :taux_marge_brute, :excedent_brut_exploitation, :taux_marge_EBITDA, :api_data)
    strong_params[:nom_entreprise] = strong_params[:nom_entreprise].capitalize # Afin de ne pas afficher le nom en full majuscules sur les cards de l'index
    strong_params
  end
end
