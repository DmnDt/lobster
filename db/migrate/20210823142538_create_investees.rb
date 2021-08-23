class CreateInvestees < ActiveRecord::Migration[6.0]
  def change
    create_table :investees do |t|
      t.string :SIRET
      t.string :company_name
      t.string :NAF
      t.string :address
      t.string :activity
      t.string :president
      t.string :managing_director
      t.integer :shares
      t.text :table_cap
      t.integer :turnover_n_2
      t.integer :turnover_n_1
      t.integer :turnover_n
      t.integer :growth_n_2_n_1
      t.string :growth_n_1_n

      t.timestamps
    end
  end
end
