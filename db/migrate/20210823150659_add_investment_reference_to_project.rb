class AddInvestmentReferenceToProject < ActiveRecord::Migration[6.0]
  def change
    add_reference :investments, :project, index: true
  end
end
