class Account

  attr_reader :balance

  def initialize(balance = 0)

    @balance = balance

  end
  
  def deposit(amount)

    @balance += amount
  
  end

  def withdraw(amount)
    raise "Balance has been exceeded. Please withdraw a smaller amount" if balance_exceeded?(amount)

    @balance -= amount

  end

  private

  def balance_exceeded?(amount)
     amount > @balance
  end

end