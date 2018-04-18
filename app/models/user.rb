class User < ActiveRecord::Base
  has_many :transactions
  has_many :companies, through: :transactions
end
