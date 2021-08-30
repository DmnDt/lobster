class AddColumnsToInvestees < ActiveRecord::Migration[6.0]
  def change
    add_column :investees, :domaine_activite, :string
    add_column :investees, :chiffre_affaires, :integer
    add_column :investees, :taux_croissance_chiffre_affaires, :integer
    add_column :investees, :marge_brute, :integer
    add_column :investees, :taux_marge_brute, :integer
    add_column :investees, :excedent_brut_exploitation, :integer
    add_column :investees, :taux_marge_EBITDA, :integer
    add_column :investees, :api_data, :jsonb
  end
end
