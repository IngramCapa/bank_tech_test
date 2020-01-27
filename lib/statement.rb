# class Statement

#     def initialize(transaction)
#         @transaction = transaction # transaction details (date and amount)
#         @t_list = Hash.new(0)  # list of transactions
#     end

#     def balance 
#        @t_list.sum{|date, amount| @transaction.t_details[amount]}
#     end

#     def deposit(date, amount)
#         @t_list[balance] += amount
#     end
# end