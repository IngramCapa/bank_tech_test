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
    raise StandardError, 'Not enough money in account.' if @balance - amount.negative?

    # add validation method
    @transactions.add_transaction(amount, 'debit', @balance)
    @balance -= amount
  end

end
