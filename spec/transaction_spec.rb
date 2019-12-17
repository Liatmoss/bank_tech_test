require 'transaction'

describe Transaction do
  let(:account) { double :account }
  let(:statement) { double :statement }
  let(:transaction) { Transaction.new(statement) }

  describe '#print' do
    it 'prints a full statement with a deposit and withdrawal' do
      allow(statement).to receive(:create).and_return "date || credit || debit || balance\n #{Time.now.strftime('%d/%m/%Y')} || || 500.00 || 2500.00\n#{Time.now.strftime('%d/%m/%Y')} || 2000.00 || || 3000.00\n#{Time.now.strftime('%d/%m/%Y')} || 1000.00 || || 1000.00"
      expect(transaction.print).to eq "date || credit || debit || balance\n #{Time.now.strftime('%d/%m/%Y')} || || 500.00 || 2500.00\n#{Time.now.strftime('%d/%m/%Y')} || 2000.00 || || 3000.00\n#{Time.now.strftime('%d/%m/%Y')} || 1000.00 || || 1000.00"
    end
  end
end
