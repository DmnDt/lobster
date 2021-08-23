class CreateInvestments < ActiveRecord::Migration[6.0]
  def change
    create_table :investments do |t|
      t.float :amount
      t.integer :status

      t.timestamps
    end
  end
end
