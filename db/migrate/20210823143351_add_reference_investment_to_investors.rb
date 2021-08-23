class AddReferenceInvestmentToInvestors < ActiveRecord::Migration[6.0]
  def change
        add_reference :investments, :investor, index: true
  end
end
