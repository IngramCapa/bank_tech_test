require_relative 'transaction'
require_relative 'transaction_history'
require_relative 'print_statement'

class Account
  def initialize(transaction_history = TransactionHistory.new)
    @transactions = transaction_history
    @balance = 0
  end

  def deposit(date, amount)
    @balance += amount
    @transactions.add_transaction(date, amount, 'credit', @balance)
    @balance

  end

  def withdrawal(date, amount)
    raise StandardError, 'Not enough money in account.' if (@balance - amount).negative?

    @balance -= amount
    @transactions.add_transaction(date, amount, 'debit', @balance)
    @balance
  end

  def print(print_statement = PrintStatement.new(@transactions)) 
    print_statement.print_header
    print_statement.print_transactions
  end

end
