# Load the Rails application.
# require 'application'
require 'pry'
# Initialize the Rails application.
Rails.application.initialize!


  def welcome
    puts "Welcome!  This is an IPO investment game."
  end

  def get_company
    @company_name = prompt.select("Choose a company to invest in:", Company.all_names)
  end

   def get_share_amount
    @shares_select = prompt.slider("Shares:", max: 50, step: 1)
   end

   def change_balance
     new_balance = self.account_balance - (@shares_select * Company.find_by_name(@company_name).open_price)
   end
  # Investment class
  def display_balance
    self.account_balance
  end

  # Need to order by open_price but not getting correct number for query
  def investments_complete
    if self.account_balance < 5
    end

  # Investments
  def final_sale
    self.companies.map do |company|
      result = company.close_price.to_f * self.find_num_shares(company)
      result.round(2)
    end
  end

  def initial_purchase
    self.companies.map do |company|
      result = company.open_price.to_f * self.find_num_shares(company)
      result.round(2)
    end
  end

  def return_on_capital
    result = final_sale.reduce(:+) - initial_purchase.reduce(:+)
    result.round(2)
  end

  thurman.final_sale
  thurman.initial_purchase
  thurman.return_on_capital



  def find_num_shares(company)
    self.transactions.each do |trans|
      if company.id == trans.company_id
        return trans.num_of_shares
      end
    end
  end

  def display_portfolio
    self.companies.map do |company|
      puts "#{company.name}, Share Price: #{company.open_price}, Number of Shares: #{self.find_num_shares(company)}"
    end
  end

  thurman.display_portfolio

def view_all_companies?
  second_prompt = prompt.yes?("Would you like to view all available companies?") do ||
end

  def get_company
    @company_name = prompt.select("Choose a company to invest in:", Company.all_names)
  end





  # share instance
  # how do we select the share price of the given company?
  # Use API
  # def get_share_price(name_of_company)
  #   data[IPOPerformances].map { |e|  }
  # end
  #

  #
  # #User class
  # def display_balance_and_portfolio
  #   puts self.acct_balance
  #   puts self.portfolio
  # end
