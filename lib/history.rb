# require_relative 'transaction'

# class History

#     attr_reader

#     def initialize(transaction = Transaction.new)
#         @balance = BigDecimal('0.00')
#         @history = history
#         @transaction = transaction
#     end

#     def add(amount)
#         is_valid(amount)
#         @balance += amount
#     end

#     def withdraw(amount)
#         fail "Amount higher than current balance." unless (@balance - amount) >= 0
#         is_valid(amount)
#         @balance -= amount
#     end


#     private

#     def is_valid(amount)
#         return unless amount.to_f.negative?  
#         # || amount.count("a-zA-Z") > 0
#         raise StandardError.new "Invalid input."
#     end

# end