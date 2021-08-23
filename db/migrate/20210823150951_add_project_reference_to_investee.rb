class AddProjectReferenceToInvestee < ActiveRecord::Migration[6.0]
  def change
    add_reference :projects, :investee, index: true
  end
end
