class AddReferncesToInvestors < ActiveRecord::Migration[6.0]
  def change
      add_reference :investors, :users, index: true
  end
end
