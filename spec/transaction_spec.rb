# frozen_string_literal: true

require 'transaction'
require 'money'

describe Transaction do
  let(:subject) { Transaction.new('10/01/2012', 2.03, 'credit', 2.03) }

  describe '#date' do
    it 'records a transaction date in European format' do
      allow(subject).to receive(:format_date).and_return('10/01/2012')
    end
  end

  describe '#amount' do
    it 'records the amount in BigDecimal format' do
      allow(subject).to receive(:format_amount).and_return('2.03')
    end

    it 'should not allow a negative amount' do
      expect { subject.is_valid(-5.06) }.to raise_error 'Invalid input.'
    end

    it 'should not allow a string as input' do
      expect { subject.is_valid('Ab4') }.to raise_error 'Invalid input.'
    end
  end

  describe '#balance' do
    let(:credit) { Transaction.new('10/01/2012', 1000.00, 'credit', 1000.00) }
    let(:debit) { Transaction.new('11/01/2012', 800.00, 'debit', 1000.00) }

    it 'should update the balance after a credit transaction' do
      expect(credit.update_balance).to eq 2000.00
    end

    it 'should update the balance after a debit transaction' do
      expect(debit.update_balance).to eq 200.00
    end
  end
end
