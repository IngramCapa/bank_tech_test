require_relative 'transaction'
require_relative 'transaction_history'

class Statement


    def initialize(transaction_history = TransactionHistory.new, balance = 0)
        @transactions = transaction_history
        @balance = balance
    end

    def deposit(amount)
        # is_valid(amount)
        @transactions.add_transaction(amount, "credit", @balance)
        @balance += amount
    end
end