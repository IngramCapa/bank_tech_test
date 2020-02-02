require_relative 'transaction'

class TransactionHistory
  attr_reader :transactions

  def initialize(transaction_class = Transaction)
    @transactions = []
    @transaction_class = transaction_class
  end

  def add_transaction(date, amount, type, balance)
    transaction = @transaction_class.new(date, amount, type, balance)
    transaction.valid?(amount)
    @transactions.unshift(transaction).first
  end
end
