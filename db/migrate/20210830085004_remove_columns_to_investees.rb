class RemoveColumnsToInvestees < ActiveRecord::Migration[6.0]
  def change
    remove_column :investees, :company_name
    remove_column :investees, :NAF
    remove_column :investees, :activity
    remove_column :investees, :president
    remove_column :investees, :managing_director
    remove_column :investees, :shares
    remove_column :investees, :table_cap
    remove_column :investees, :turnover_n_2
    remove_column :investees, :turnover_n_1
    remove_column :investees, :turnover_n
    remove_column :investees, :growth_n_2_n_1
    remove_column :investees, :growth_n_1_n
  end
end
