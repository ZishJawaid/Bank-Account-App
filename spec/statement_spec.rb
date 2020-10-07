require 'statement'

describe Statement do
  it 'prints the account statement header' do
    expect(subject.print).to eq("date || credit || debit || balance")
  end


end