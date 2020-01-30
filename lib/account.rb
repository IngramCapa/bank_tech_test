require_relative 'transaction'
require_relative 'transaction_history'
require_relative 'print_statement'

class Account
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
    raise StandardError, 'Not enough money in account.' if (@balance - amount).negative?

    # add validation method
    @transactions.add_transaction(amount, 'debit', @balance)
    @balance -= amount
  end

  def print_statement(print_statement = PrintStatement.new)
    print_statement.print_header
    print_statement.print_transactions
  end

end