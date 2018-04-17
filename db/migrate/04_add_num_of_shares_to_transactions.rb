class AddNumOfSharesToTransactions < ActiveRecord::Migration[5.1]

  def change
    add_column :transactions, :num_of_shares, :integer
  end

end
