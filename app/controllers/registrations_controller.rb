class RegistrationsController < Devise::RegistrationsController
   def after_sign_up_path_for(resource) # Redirection vers Investor et Investee new quand on choisit la categorie au signup de User
    if current_user.category == "Investee"
      new_investee_path
    elsif current_user.category == "Investor"
      new_investor_path
    end
  end
end
