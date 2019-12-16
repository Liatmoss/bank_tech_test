require_relative 'amount'

class Statement

  def initialize(amount)
    @amount = amount
  end

  def print
    "date || credit || debit || balance\n #{@amount.statement.reverse.join("\n")}"
  end

end
