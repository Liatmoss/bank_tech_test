class Account
  DEFAULT_BALANCE = 0
  attr_reader :statement

  def initialize(balance = DEFAULT_BALANCE)
    @balance = balance
    @statement = []
  end

  def deposit(amount)
    @statement << "#{Time.now.strftime('%d/%m/%Y')} || #{amount}.00 || || #{@balance += amount}.00"
    @balance
  end

  def withdraw(amount)
    raise "Not enough funds. Current balance is #{@balance}.00" if amount > @balance

    @statement << "#{Time.now.strftime('%d/%m/%Y')} || || #{amount}.00 || #{@balance -= amount}.00"
    @balance
  end
end
