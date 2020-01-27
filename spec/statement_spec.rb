require 'transaction'
require 'statement'

describe Statement do 
    let(:subject) {
        transaction = Transaction.new ({"10/01/2012" => 1000})
        Statement.new(transaction)
    }

    it "should have a balance of 0 when empty" do
        expect(subject.balance).to eq 0
    end

    describe "#deposit" do

        it "should add a transaction" do
            subject.deposit("10/01/2012", 1000)
            
        end
    end
end


