class AddNomEntrepriseToInvestees < ActiveRecord::Migration[6.0]
  def change
    add_column :investees, :nom_entreprise, :string
  end
end
