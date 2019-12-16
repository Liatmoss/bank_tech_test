require 'amount'

describe Amount do

  let (:amount) {Amount.new}

  describe '#deposit' do
    it 'expects the balance to equal 500 after a deposit of 500' do
      amount.deposit("10/01/2012", 500.00)
      expect(amount.balance).to eq(500.00)
    end
  end

  describe '#credit' do
    it 'expects the balance to equal 2500 after a withdrawal of 500' do
      amount.deposit("10/12/2012", 3000.00)
      amount.withdraw("12/12/2012", 500.00)
      expect(amount.balance).to eq(2500.00)
    end

    it 'raises an error if balance is less than withdrawal amount' do
      amount.deposit("10/12/2012", 100)
      expect { amount.withdraw("12/12/2012", 300) }.to raise_error "Not enough funds. Current balance is 100.00"
    end
  end

  describe '#statement' do
    it 'prints the statement after one deposit' do
      amount.deposit("10/12/2012", 100)
      expect(amount.statement).to include ("10/12/2012 || 100.00 || || 100.00")
    end

    it 'prints the statement after a withdrawal' do
      amount.deposit("10/12/2012", 500)
      amount.withdraw("11/12/2012", 100)
      expect(amount.statement).to include ("11/12/2012 || || 100.00 || 400.00")
    end

    it 'prints a full statement with a deposit and withdrawal' do

  end

end
