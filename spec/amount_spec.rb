require 'amount'

describe Amount do

  let (:amount) {Amount.new}

  describe '#deposit' do
    it 'expects the balance to equal 500 after a deposit of 500' do
      amount.deposit(500.00)
      expect(amount.balance).to eq(500.00)
    end
  end

  describe '#credit' do
    it 'expects the balance to equal 2500 after a withdrawal of 500' do
      amount.deposit(3000.00)
      amount.withdraw(500.00)
      expect(amount.balance).to eq(2500.00)
    end

    it 'raises an error if balance is less than withdrawal amount' do
      amount.deposit(100)
      expect { amount.withdraw(300) }.to raise_error "Not enough funds. Current balance is 100.00"
    end
  end
end
