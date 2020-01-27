class Transaction

    attr_reader  :date, :amount, :balance

    def initialize
        @date = date
        @amount = amount
        @balance = BigDecimal('0.00')
    end

    def format_date(date)
        date = Time.new
        "#{date.day}/#{date.month}/#{date.year}"
    end

    def format_amount(amount)
        amount = BigDecimal('0.00')
    end

    def add(amount)
        @balance += amount

    end
end