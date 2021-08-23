class DeleteWrongReferncesToInvestors < ActiveRecord::Migration[6.0]
  def change
      remove_reference :investors, :users, index: true
  end
end
