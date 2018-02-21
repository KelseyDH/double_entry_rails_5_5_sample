class CreateTransfers < ActiveRecord::Migration[5.1]
  def change
    create_table :transfers do |t|
      t.integer :amount
      t.string :currency

      t.timestamps
    end
  end
end
