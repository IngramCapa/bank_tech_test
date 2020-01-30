require 'print_statement'

describe PrintStatement do
  let(:transaction_history) {double :transaction_history}
  let(:transaction_1) {double :transaction, date: "10/01/2012", amount: 1000.00, type: 'credit', balance: 1000.00}
  let(:transaction_2) {double :transaction, date: "13/01/2012", amount: 800.00, type: 'debit', balance: 200.00}
  let(:subject) { PrintStatement.new(transaction_history)}

  describe "#print_header" do
    it "should print the table header" do
      expect { subject.print_header }.to output("date || credit || debit || balance\n").to_stdout
    end
  end

  describe "#transaction_history" do
    it "should print the list of transactions" do
      allow(transaction_history).to receive(:transactions) {[transaction_2, transaction_1]}
      expect { subject.print_transactions }.to output("13/01/2012 || || 800.00 || 200.00\n10/01/2012 || 1000.00 || || 1000.00\n").to_stdout
    end
  end
end
