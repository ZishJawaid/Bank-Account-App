require 'statement'

describe Statement do
  let(:date) { Time.new.strftime("%d/%m/%Y") }
  
  it 'prints out a full statement with multiple transactions' do
    transaction_log = [[date, 1000, nil, 1000], [date, nil, 500, 500], [date, nil, 250, 250]]
    expect { subject.print(transaction_log) }.to output("date || credit || debit || balance\n #{date} ||  || 250 || 250\n #{date} ||  || 500 || 500\n #{date} || 1000 ||  || 1000\n").to_stdout
  end

end
