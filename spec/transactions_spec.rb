require 'transactions'

describe Transactions do
       
  it 'logs a credit transaction' do
    date = Time.new.strftime("%d/%m/%Y")
    account = Account.new
    account.deposit(1000)
    account.withdraw(500)    
    expect(subject.credit(date, 1000, 1000)).to eq ([[date, 1000, nil, 1000]])
  end
end