require 'account'

describe Account do
  it 'can open a new bank account instance' do
    expect(subject).to be_an_instance_of (Account)
  end


end