class Statement

    def initialize(t_details)
        @t_details = t_details # transaction details (date and amount)
        @t_list = Hash.new(0)  # list of transactions
    end

    def balance
        0
    end

    def deposit(date, amount)
        @t_list[balance] += amount
    end
end