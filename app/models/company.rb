class Company < ActiveRecord::Base
  has_many :transactions
  has_many :users, through: :transactions

  def self.all_names
    self.all.map {|company| company.name}
  end
end

def welcome
  puts "Welcome!  This is an IPO investment game."
  puts "Please enter your name:"
  name = gets.chomp
  User.create(name: name, account_balance: 100)
end
