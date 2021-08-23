class AddUserReferenceToInvestee < ActiveRecord::Migration[6.0]
  def change
    add_reference :investees, :user, index: true
  end
end
