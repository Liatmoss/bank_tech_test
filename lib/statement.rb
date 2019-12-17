require_relative 'account'
require_relative 'transaction'
class Statement
  def initialize(amount)
    @amount = amount
  end

  def create
    "date || credit || debit || balance\n #{@amount.statement.reverse.join("\n")}"
  end
end
