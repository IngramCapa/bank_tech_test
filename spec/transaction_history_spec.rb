require 'transaction_history'


describe TransactionHistory do

    let(:subject) {TransactionHistory.new()}
    let(:transaction_1) {double :transaction}
    let(:transaction_2) {double :transaction}

    let(:transaction_class) {double :transaction_class, new: transaction_1}


    describe "#add" do
        it "adds one transaction to the history" do
            expect(subject.add_transaction(800.00, "debit", 1000.00, transaction_class)).to eq transaction_1
          
        end
    end
  

end