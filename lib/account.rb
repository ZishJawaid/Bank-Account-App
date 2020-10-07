class Account

  attr_reader :balance, :transaction_log

  def initialize(balance = 0)

    @balance = balance
    @transaction_log = []

  end
  
  def deposit(amount, date = Time.new.strftime("%d/%m/%Y"))
    raise "Please deposit a positive amount" if amount.negative?
    @balance += amount
    @transaction_log << [date, amount, nil, balance]
  
  end

  def withdraw(amount, date = Time.new.strftime("%d/%m/%Y"))
    raise "Balance has been exceeded. Please withdraw a smaller amount" if balance_exceeded?(amount)
    raise "Please withdraw a positive amount" if amount.negative?
    @balance -= amount
    @transaction_log << [date, nil, amount, balance] 

  end

  
  private

  def balance_exceeded?(amount)
     amount > @balance
  end

end