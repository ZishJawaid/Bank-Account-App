require 'statement'

describe Statement do
   
  it 'prints the account statement header' do
    expect(subject.print).to eq("date || credit || debit || balance")
  end

  it 'prints out the transaction log' do
    date = Time.new.strftime("%d/%m/%Y")
    account = Account.new
    account.deposit(1000)
    account.withdraw(500)
    expect(subject.print).to eq("date || credit || debit || balance/n #{date} || 1000 || || 1000/n #{date} || || 500 || 500")
  end
end