class Account

  attr_reader :balance

  def initialize(balance = 0)

    @balance = balance

  end
  
  def deposit(amount)

    @balance += amount
  
  end

  def withdraw(amount)
    raise "Balance has been exceeded. Please withdraw a smaller amount" if amount > @balance

    @balance -= amount

  end

end