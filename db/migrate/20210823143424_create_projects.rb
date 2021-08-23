class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.integer :valuation
      t.integer :conversion_rate
      t.integer :coupon
      t.date :conversion_date
      t.integer :status
      t.integer :total_amount
      t.string :financing_thesis

      t.timestamps
    end
  end
end
