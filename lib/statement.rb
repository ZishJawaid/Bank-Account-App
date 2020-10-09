require_relative 'account'
require_relative 'transactions'

class Statement

  def print(transaction_log)
    
      transactions = transaction_log.map { |log| log.join(" || ")}
      statement = transactions.reverse.join("\n ")
      full_statement = "#{header}\n #{statement}"
      puts full_statement
      full_statement
    
  end

  private

  def header
    "date || credit || debit || balance"
  end
end


