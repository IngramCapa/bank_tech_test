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

  describe "#deposit" do
    it "should allow adding £5" do
      subject.add(5.06)
      expect(subject.balance).to eq 5.06
    end

    it "should allow adding multiple deposits" do
      subject.add(5.06)
      subject.add(5.00)
      expect(subject.balance).to eq 10.06
    end

    it "should not allow adding a negative amount" do
      expect { subject.add(-5.06) }.to raise_error "Invalid input."
    end

    xit "should not allow inputting letters" do
      expect { subject.add("7Bc.00") }.to raise_error "Invalid input."
    end

  end

  describe "#withdrawal" do
    it "should allow withdrawing £5" do
      subject.add(5.06)
      subject.withdraw(5.00)
      expect(subject.balance).to eq 0.06
    end

    it "should allow multiple withdrawals" do
      subject.add(10.06)
      subject.withdraw(5.00)
      subject.withdraw(2.03)
      expect(subject.balance).to eq 3.03
    end

    it "should raise an error if the withdrawn amount is higher than the balance" do
      subject.add(10.06)
      expect { subject.withdraw(10.20) }.to raise_error "Amount higher than current balance."
    end
  end


end