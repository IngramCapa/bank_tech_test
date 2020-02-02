class Transaction
  attr_reader :date, :amount, :type, :balance

  def initialize(date, amount, type, balance)
    @date = date
    @amount = amount
    @type = type
    @balance = balance
  end

  def valid?(amount)
    return unless amount.to_f.negative? || amount.to_s.count('a-zA-Z').positive?

    raise StandardError, 'Invalid input.'
  end

  private

  def format_date(date)
    _date = Time.new
    "#{date.day}/#{date.month}/#{date.year}"
  end

  def format_amount(_amount)
    _amount = BigDecimal('0.00')
  end

  def format_balance(_balance)
    _balance = BigDecimal('0.00')
  end
end
