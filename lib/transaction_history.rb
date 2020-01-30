require_relative 'transaction'

class TransactionHistory

    attr_reader :transactions

    def initialize(transaction_class = Transaction)
        @transactions = []
        @transaction_class = transaction_class
    end

    def add_transaction(amount, type, balance, transaction_class)
        transaction = transaction_class.new(amount, type, balance)
        @transactions.unshift(transaction).first
    end


end