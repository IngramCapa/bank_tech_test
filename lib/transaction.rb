class Transaction
  attr_reader :date, :amount, :type, :balance

  def initialize(date, amount, type, balance)
    @date = date
    @amount = amount
    @type = type
    @balance = balance
  end

  def update_balance
    # update balance to show 2 decimals
    type == 'credit' ? @balance += amount : @balance -= amount
  end

  def format_date(date)
    date = Time.new
    "#{date.day}/#{date.month}/#{date.year}"
  end

  def format_amount(_amount)
    amount = BigDecimal('0.00')
  end

  def valid?(amount)
    return unless amount.to_f.negative? || amount.count('a-zA-Z').positive?

    raise StandardError, 'Invalid input.'
  end
end
