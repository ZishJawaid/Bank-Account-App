require 'transactions'

describe Transactions do
       
  it 'logs the transactions' do
    date = Time.new.strftime("%d/%m/%Y")
    account = Account.new
    account.deposit(1000)
    account.withdraw(500)    
    expect(subject.transaction_log).to eq ([[date, 1000, nil, 1000], [date, nil, 500, 500]])
  end
end