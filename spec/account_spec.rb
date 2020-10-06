require 'account'

describe Account do
 
  it 'creates a new bank account instance' do
    expect(subject).to be_an_instance_of (Account)
  end

  it 'allows a user to deposit funds' do
    expect(subject.deposit(10)).to eq(10)
  end

  describe '#withdraw' do
    let(:account) { Account.new(100) }
    
    it 'allows a user to withdraw funds' do
      expect(account.withdraw(10)).to eq(90)
    end

    it 'raises an error if withdrawal amount is greater than balance' do
      expect { account.withdraw(101) }.to raise_error("Balance has been exceeded. Please withdraw a smaller amount")
    end

  end


end