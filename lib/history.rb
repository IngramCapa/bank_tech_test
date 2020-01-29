require_relative 'transaction'

class History

    attr_reader :balance

    def initialize
        @balance = balance
    end

    
    def format_balance(balance)
        balance = BigDecimal('0.00')
    end
end