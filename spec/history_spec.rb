require 'history'


describe History do
    
    let(:subject){History.new}

    describe "#balance" do
        it "should keep track of balance" do
            allow(subject).to receive(:format_balance).and_return("0.00")
        end
    end

end