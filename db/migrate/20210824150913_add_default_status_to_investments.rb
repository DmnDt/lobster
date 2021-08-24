class AddDefaultStatusToInvestments < ActiveRecord::Migration[6.0]
  def change
    change_column :investments, :status, :integer, default: 0
  end
end
