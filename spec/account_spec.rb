require 'account'

describe Account do
  let(:amount) { Account.new }

  describe '#deposit' do
    it 'expects the balance to equal 500 after a deposit of 500' do
      expect(amount.deposit(500.00)).to eq(500)
    end

    it 'expects the balance to equal 3000 after two deposits' do
      amount.deposit(500.00)
      expect(amount.deposit(2500.00)).to eq(3000.00)
    end
  end

  describe '#credit' do
    it 'expects the balance to equal 2500 after a withdrawal of 500' do
      amount.deposit(3000.00)
      expect(amount.withdraw(500.00)).to eq(2500.00)
    end

    it 'raises an error if balance is less than withdrawal amount' do
      amount.deposit(100)
      expect { amount.withdraw(300) }.to raise_error 'Not enough funds. Current balance is 100.00'
    end
  end
end
