# Load the Rails application.
# require 'application'
require 'pry'
require 'tty'
# Initialize the Rails application.

# Rails.application.initialize!


  def welcome
    puts "Welcome!  This is an IPO investment game."
  end

  def get_company
    # @company_name =
    # prompt.select("Choose a company to invest in:", Company.all_names)
    puts "Choose a company to invest in:"
    @company = gets.chomp
  end

   def get_share_amount
    # @shares_select = prompt.slider("Shares:", max: 50, step: 1)
    "Select share amount:"
    @shares = gets.chomp
   end

   def change_balance
     new_balance = self.account_balance - (@shares * Company.find_by_name(@company).open_price)
   end
  # Investment class
  def display_balance
    puts "Your current balance is #{self.account_balance}"
  end

  # Need to order by open_price but not getting correct number for query
  def investments_complete
    if self.account_balance < 5
    end
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

  # thurman.final_sale
  # thurman.initial_purchase
  # thurman.return_on_capital

  def set_investments
    Investment.all.map do |investment|
      investment.name.downcase = investment
    end
  end

  def lowest_open_price
    hsh = {}
    Company.all.each do |el|
      hsh[el.open_price.to_f] = el
    end
    hsh.min_by {|k,v| k}
  end



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

  def view_all_companies?
    second_prompt = prompt.yes?("Would you like to view all available companies?") do ||
    end
  end

  # def get_company
  #   @company_name = prompt.select("Choose a company to invest in:", Company.all_names)
  # end

  def run
    welcome
    display_balance
    get_company
    get_share_amount
    change_balance
    display_balance
    display_portfolio
  end

  thurman = Investment.create("Thurman", 1000) 

  thurman.run
