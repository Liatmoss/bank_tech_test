class Amount

  DEFAULT_BALANCE = 0

  def initialize(balance = DEFAULT_BALANCE)
    @balance = balance
  end

  def deposit(a)
    @balance += a
  end

  def viewBalance
    @balance
  end

end
