# frozen_string_literal: true

require_relative 'transaction'
require_relative 'transaction_history'
require_relative 'print_statement'

class Statement
  def initialize(transaction_history = TransactionHistory.new, balance = 0)
    @transactions = transaction_history
    @balance = balance
  end

  def deposit(amount)
    # add validation method
    @transactions.add_transaction(amount, 'credit', @balance)
    @balance += amount
  end

  def withdrawal(amount)
    # StandardError.new "Not enough money" if @balance -amount < 0
    # add validation method
    @transactions.add_transaction(amount, 'debit', @balance)
    @balance -= amount
  end
end
