class Transaction

    attr_reader  :date, :amount

    def initialize
        @date = date
        @amount = amount
    end

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
    
    #test
end