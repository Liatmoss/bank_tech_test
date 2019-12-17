require_relative 'account'
require_relative 'statement'
class Transaction
  attr_reader :print
  def initialize(statement)
    @statement = statement
  end

  def print
    @statement.create
  end
end
