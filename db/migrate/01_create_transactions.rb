class CreateTransactions < ActiveRecord::Migration[5.1]

  def change
    create_table :transactions do |t|
      t.integer :company_id
      t.boolean :buy
    end
  end

end
