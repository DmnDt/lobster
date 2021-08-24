class ChangeColumnToInvestee < ActiveRecord::Migration[6.0]
  def change
    change_column :investees, :growth_n_2_n_1, :string
  end
end
