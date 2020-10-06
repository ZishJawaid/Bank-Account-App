require 'account'

describe Account do
  it 'creates a new bank account instance' do
    expect(subject).to be_an_instance_of (Account)
  end

  it 'allows a user to deposit funds' do
    expect(subject.deposit(10)).to eq(10)
  end

  it 'allows a user to withdraw funds' do
    expect(subject.withdraw(10)).to eq(-10)
  end

end