class Transaction

    attr_reader  :date, :amount, :type, :balance

    def initialize(date, amount, type, balance)
        @date = date
        @amount = amount
        @type = type
        @balance = balance
    end

    def format_date(date)
        date = Time.new
        "#{date.day}/#{date.month}/#{date.year}"
    end

    def format_amount(amount)
        amount = BigDecimal('0.00')
    end

    def is_valid(amount)
        return unless amount.to_f.negative?|| amount.count("a-zA-Z") > 0
        raise StandardError.new "Invalid input."
    end
end