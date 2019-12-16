class Amount

  DEFAULT_BALANCE = 0

  def initialize(balance = DEFAULT_BALANCE)
    @balance = balance
  end

  def deposit(date, a)
    @date = date
    @balance += a
  end

  def viewBalance
    @balance
  end

  def withdraw(date, a)
    @date = date
    @balance -= a
  end
end
