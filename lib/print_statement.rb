# frozen_string_literal: true

class PrintStatement
  def initialize(transaction_history)
    @transaction_history = transaction_history
  end

  def print_header
    puts 'date || credit || debit || balance'
  end

  def print_transactions
    @transaction_history.transactions.each do |t|
      if t.type == 'credit'
        puts "#{t.date} || #{format('%.2f', t.amount)} || || #{format('%.2f', t.balance)}"
      else t.type == 'debit'
           puts "#{t.date} || || #{format('%.2f', t.amount)} || #{format('%.2f', t.balance)}"
      end
    end
  end
end
