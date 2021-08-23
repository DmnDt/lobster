class CreateInvestors < ActiveRecord::Migration[6.0]
  def change
    create_table :investors do |t|
      t.string :category
      t.string :type
      t.string :corporate_name
      t.text :investment_examples
      t.string :average_ticket
      t.string :thesis
      t.string :industries
      t.string :siret

      t.timestamps
    end
  end
end
