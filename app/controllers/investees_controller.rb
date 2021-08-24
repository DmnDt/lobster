class InvesteesController < ApplicationController
  def new
    @investee = Investee.new
    @user = current_user
  end

  def create
    @investee = Investee.new(investee_params)
    @user = current_user
    @investee.user_id = @user

    if @investee.save!
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def investee_params
    params.require(:investee).permit(:SIRET, :company_name, :NAF, :user_id, :address, :activity, :president, :managing_director, :shares, :table_cap, :turnover_n_2, :turnover_n_1, :turnover_n, :growth_n_2_n_1, :growth_n_1_n)
  end
end
