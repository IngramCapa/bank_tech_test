require 'statement'

describe Statement do
    let(:transaction) {double :transaction}
    let(:transaction_history) {double :transaction_history}
    let(:subject) {Statement.new(transaction_history)}

    before(:each) do
        allow(transaction).to receive(:new)
        allow(transaction_history).to receive(:add_transaction)
    end
    

    describe "#deposit" do
        it "increases the balance by 1000" do
            expect(subject.deposit(1000)).to eq 1000
        end
    end

    describe "#withdrawal" do
        it "decreases the balance by 800" do
            subject.deposit(1000)
            expect(subject.withdrawal(800)).to eq 200
        end
    end


end