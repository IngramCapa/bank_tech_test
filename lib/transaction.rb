class Transaction

    attr_reader  :date, :amount, :balance

    def initialize
        @date = date
        @amount = amount
        @balance = BigDecimal('0.00')
    end

    def add(amount)
        is_valid(amount)
        @balance += amount
    end

    def withdraw(amount)
        fail "Amount higher than current balance." unless (@balance - amount) >= 0
        is_valid(amount)
        @balance -= amount
    end


    private

    def format_date(date)
        date = Time.new
        "#{date.day}/#{date.month}/#{date.year}"
    end

    def format_amount(amount)
        amount = BigDecimal('0.00')
    end

    def is_valid(amount)
        return unless amount.to_f.negative? 
        # || amount.count("a-zA-Z") > 0
        
        raise StandardError.new "Invalid input."
    end
    
end