require_relative 'account.rb'

class Statement

  def print(transaction_log = false)
    
    if transaction_log
      array = transaction_log.map { |log| log.join(" || ")}
      statement = array.reverse.join("\n ")
      puts statement
      statement
    else
      header
    end
  end

  def header
    "date || credit || debit || balance"
  end
end


