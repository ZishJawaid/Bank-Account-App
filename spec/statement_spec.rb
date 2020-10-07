require 'statement'

describe Statement do
   
  it 'prints the account statement header' do
    expect(subject.header).to eq("date || credit || debit || balance")
  end

  it 'prints out the transaction log' do
    date = Time.new.strftime("%d/%m/%Y")
    account = Account.new
    account.deposit(1000)
    account.withdraw(500)
    expect(subject.print(account.transaction_log)).to eq("#{date} ||  || 500 || 500\n #{date} || 1000 ||  || 1000")
  end
end