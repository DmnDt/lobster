class RegistrationsController < Devise::RegistrationsController
   def after_sign_up_path_for(resource)
    if current_user.category == "Investee"
      new_investee_path
    elsif current_user.category == "Investor"
      new_investor_path
    end
  end
end
