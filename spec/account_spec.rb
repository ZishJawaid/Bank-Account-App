require 'account'

describe Account do
 
  it 'creates a new bank account instance' do
    expect(subject).to be_an_instance_of (Account)
  end

  describe '#deposit' do

    it 'allows a user to deposit funds' do
      expect(subject.deposit(10)).to eq(10)
    end

    it 'raises an error if the amount deposited is negative' do
      expect {subject.deposit(-100) }.to raise_error("Please deposit a positive amount")
    end
  
  end

  describe '#withdraw' do
    let(:account) { Account.new(100) }
    
    it 'allows a user to withdraw funds' do
      expect(account.withdraw(10)).to eq(90)
    end

    it 'raises an error if withdrawal amount is greater than balance' do
      expect { account.withdraw(101) }.to raise_error("Balance has been exceeded. Please withdraw a smaller amount")
    end
    
    it 'raises an error if the amount withdrawn is negative' do
      expect {subject.withdraw(-100) }.to raise_error("Please withdraw a positive amount")
    end

  end

  describe '#transaction_log' do
       
    it 'logs the transactions' do
      date = Time.new.strftime("%d/%m/%Y")
      account = Account.new
      account.deposit(1000)
      account.withdraw(500)
      
      expect(account.transaction_log).to eq ([[date, 1000, nil, 1000], [date, nil, 500, 500]])
    end
  end

end