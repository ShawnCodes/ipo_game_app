# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.

Rails.application.initialize!


  def welcome
    puts "Welcome!  This is an IPO investment game."
  end

  def get_company
    @company_name = prompt.select("Choose a company to invest in:", Company.all_names)
  end

  # share instance
  # how do we select the share price of the given company?
  # Use API
  def get_share_price(name_of_company)
    data[IPOPerformances].map { |e|  }
  end

  def get_share_amount
    prompt.slider("Shares:", max: 50, step: 1)
  end

  #User class
  def display_balance_and_portfolio
    puts self.acct_balance
    puts self.portfolio
  end
