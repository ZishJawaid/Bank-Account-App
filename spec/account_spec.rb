require 'account'

describe Account do
 
  it 'creates a new bank account instance' do
    expect(subject).to be_an_instance_of (Account)
  end

  describe '#deposit' do

    it 'raises an error if the amount deposited is negative' do
      expect {subject.deposit(-100) }.to raise_error("Please deposit a positive amount")
    end
  
  end

  describe '#withdraw' do
    let(:account) { Account.new(100) }
    
    it 'raises an error if withdrawal amount is greater than balance' do
      expect { account.withdraw(101) }.to raise_error("Balance has been exceeded. Please withdraw a smaller amount")
    end
    
    it 'raises an error if the amount withdrawn is negative' do
      expect {subject.withdraw(-100) }.to raise_error("Please withdraw a positive amount")
    end

  end

 
end