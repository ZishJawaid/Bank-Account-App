require 'statement'

describe Statement do
  let(:date) { Time.new.strftime("%d/%m/%Y") }
  let(:account) { Account.new }

  it 'prints the account statement header' do
    expect(subject.header).to eq("date || credit || debit || balance")
  end

  it 'prints out a full statement with multiple transactions' do
    account.deposit(1000)
    account.withdraw(500)
    account.withdraw(250)
    expect(subject.print(account.transaction_log)).to eq("date || credit || debit || balance\n #{date} ||  || 250 || 250\n #{date} ||  || 500 || 500\n #{date} || 1000 ||  || 1000")

  end
end