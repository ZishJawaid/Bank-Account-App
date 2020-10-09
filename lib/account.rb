require_relative 'statement'
require_relative 'transactions'

class Account

  attr_reader :balance, :transactions, :transaction_log, :new_statement

  def initialize(balance = 0) 
    @balance = balance
    @transactions = Transactions.new
    @transaction_log = transactions.transaction_log
    @new_statement = Statement.new
  end

  def statement
    new_statement.print(transaction_log)
  end
  
  def deposit(amount, date = Time.new.strftime("%d/%m/%Y"))
    raise "Please deposit a positive amount" if amount.negative?
    @balance += amount
    transactions.credit(date, amount, balance)
  end

  def withdraw(amount, date = Time.new.strftime("%d/%m/%Y"))
    raise "Balance has been exceeded. Please withdraw a smaller amount" if balance_exceeded?(amount)
    raise "Please withdraw a positive amount" if amount.negative?
    @balance -= amount
    transactions.debit(date, amount, balance)
  end

  
  private

  def balance_exceeded?(amount)
     amount > @balance
  end

end