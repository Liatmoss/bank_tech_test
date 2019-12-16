class Amount

  DEFAULT_BALANCE = 0
  attr_reader :statement, :balance

  def initialize(balance = DEFAULT_BALANCE)
    @balance = balance
    @statement = []
  end

  def deposit(date, a)
    @balance += a
    @statement << "#{date} || #{a}.00 || || #{@balance}.00"
  end

  def withdraw(date, a)
    fail "Not enough funds. Current balance is #{@balance}.00" if a > @balance
    @balance -= a
    @statement << "#{date} || || #{a}.00 || #{@balance}.00"

  end

  def statement
    "date || credit || deposit || balance\n #{@statement.reverse.join("\n")}"
  end
end
