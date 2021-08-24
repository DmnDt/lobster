class RemoveColumnToInvestors < ActiveRecord::Migration[6.0]
  def change
    remove_column :investors, :type, :string
  end
end
