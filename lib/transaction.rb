class Transaction

    attr_reader  :date

    def initialize
        @date = date
    end

    def format_date(date)
        date = Time.new
        "#{date.day}/#{date.month}/#{date.year}"
    end
end