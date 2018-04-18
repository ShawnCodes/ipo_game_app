class CreateUsers < ActiveRecord::Migration[5.1]

  def change
    create_table :users do |t|
      t.string :name
      t.integer :account_balance
    end
  end

end
