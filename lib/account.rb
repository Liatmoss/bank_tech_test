class Account
  DEFAULT_BALANCE = 0
  attr_reader :balance, :statement

  def initialize(balance = DEFAULT_BALANCE)
    @balance = balance
    @statement = []
  end

  def deposit(amount)
    @balance += amount
    @statement << "#{Time.now.strftime('%d/%m/%Y')} || #{amount}.00 || || #{@balance}.00"
  end

  def withdraw(amount)
    raise "Not enough funds. Current balance is #{@balance}.00" if amount > @balance

    @balance -= amount
    @statement << "#{Time.now.strftime('%d/%m/%Y')} || || #{amount}.00 || #{@balance}.00"
  end
end
