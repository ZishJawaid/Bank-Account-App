class Transactions

  attr_reader :transaction_log

  def initialize
    @transaction_log = []
  end

  def credit(date = Time.new.strftime("%d/%m/%Y"), amount, balance)
   
    @transaction_log << [date, amount, nil, balance]
  
  end

  def debit(date = Time.new.strftime("%d/%m/%Y"), amount, balance)
   
    @transaction_log << [date, nil, amount, balance]
  
  end

end     
