require 'transaction'
require 'money'

describe Transaction do
  
  let(:subject){Transaction.new}

  describe "#date" do
    it "records a transaction date in European format" do
      allow(subject).to receive(:format_date).and_return("10/01/2012")
    end
  end

  describe "#amount" do
    it "records the amount in BigDecimal format" do
      allow(subject).to receive(:format_amount).and_return("2.03")
    end
  end

  
end