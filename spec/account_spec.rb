require 'account'

describe Account do
  let(:transaction) { double :transaction }
  let(:transaction_history) { double :transaction_history }
  let(:subject) { Account.new(transaction_history) }

  before(:each) do
    allow(transaction_history).to receive(:add_transaction)
    allow(transaction).to receive(:new)
    
  end

  describe '#deposit' do
    it 'increases the balance by 1000' do
      expect(subject.deposit('10/01/2012', 1000.00)).to eq 1000.00
    end
  end

  describe '#withdrawal' do
    it 'decreases the balance by 800' do
      subject.deposit('10/01/2012', 1000.00)
      expect(subject.withdrawal('13/01/2012', 800.00)).to eq 200.00
    end

    it "should raise an error in case of insufficient funds" do
      subject.deposit('10/01/2012', 1000.00)
      expect { subject.withdrawal('13/01/2012', 1200) }.to raise_error(StandardError, 'Not enough money in account.')
    end
  end

  describe "#print" do
    let(:printout) { double :print_statement }

    before(:each) do
      allow(printout).to receive(:print_header) { puts 'date || credit || debit || balance' }
      allow(printout).to receive(:print_transactions) { puts "13/01/2012 || || 800.00 || 200.00\n10/01/2012 || 1000.00 || || 1000.00\n" }
    end

    it "prints the statement" do
      expect { subject.print_statement(printout) }.to output("date || credit || debit || balance\n13/01/2012 || || 800.00 || 200.00\n10/01/2012 || 1000.00 || || 1000.00\n").to_stdout
    end
  end
end
