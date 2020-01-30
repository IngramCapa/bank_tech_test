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

        # it "adds more than one transaction to the history" do
        #     expect(subject.add_transaction(1000.00, "credit", 1000.00, transaction_class)).to eq transaction_2

        # end
    end

    describe "#transactions" do

        before(:each) do
            allow(transaction_1).to receive(:date) {"10/01/2012"}
            allow(transaction_2).to receive(:date) {"13/01/2012"}
            allow(transaction_class).to receive(:new).and_return([transaction_1, transaction_2])
            subject.add_transaction(800.00, "debit", 1000.00, transaction_class)
            subject.add_transaction(1000.00, "credit", 1000.00, transaction_class)
        end

        it "returns more than one stored transaction" do
            expect(subject.transactions).to eq [transaction_2, transaction_1]
        end
    end
  

end