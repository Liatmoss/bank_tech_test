require_relative 'account'
require_relative 'statement'
class Transaction
  def initialize(statement)
    @statement = statement
  end

  def print
    @statement.create
  end
end
