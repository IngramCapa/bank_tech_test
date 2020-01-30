class PrintStatement

    def initialize(transaction_history)
        @transaction_history = transaction_history
    end

    def print_header
        puts "date || credit || debit || balance"
    end
end