class Account

  attr_reader :balance

  def initialize(balance = 0)

    @balance = balance

  end
  
  def deposit(amount)
    raise "Please deposit a positive amount" if amount.negative?

    @balance += amount
  
  end

  def withdraw(amount)
    raise "Balance has been exceeded. Please withdraw a smaller amount" if balance_exceeded?(amount)
    raise "Please withdraw a positive amount" if amount.negative?

    @balance -= amount

  end

  private

  def balance_exceeded?(amount)
     amount > @balance
  end

end