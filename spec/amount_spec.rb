require 'amount'

describe Amount do

  

  describe '#deposit' do
    it 'expects the balance to equal 500 after a deposit of 500' do
      amount = Amount.new
      amount.deposit(500.00)
      expect(amount.viewBalance).to eq(500.00)
    end
  end

end
