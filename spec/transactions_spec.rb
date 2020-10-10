require 'transactions'

describe Transactions do
  
  let(:date) { Time.new.strftime("%d/%m/%Y") }     
  
  it 'logs a credit transaction' do
    transaction = Transactions.new
    transaction.credit(date, 1000, 1000)
    expect(transaction.transaction_log).to eq [[date, 1000, nil, 1000]]
  end

  it 'logs a debit transaction' do
    transaction = Transactions.new
    transaction.debit(date, 500, 500)
    expect(transaction.transaction_log).to eq [[date, nil, 500, 500]]
  end
end
