require 'statement'

describe Statement do
  let(:account) { double :account }
  let(:statement) { Statement.new(account) }

  describe 'print_statement' do
    it 'prints the statement after one deposit' do
      allow(account).to receive(:statement).and_return ["#{Time.now.strftime('%d/%m/%Y')} || 100.00 || || 100.00"]
      expect(statement.print).to include "#{Time.now.strftime('%d/%m/%Y')} || 100.00 || || 100.00"
    end

    it 'prints the statement after a withdrawal' do
      allow(account).to receive(:statement).and_return ["#{Time.now.strftime('%d/%m/%Y')} || || 100.00 || 400.00"]
      expect(statement.print).to include "#{Time.now.strftime('%d/%m/%Y')} || || 100.00 || 400.00"
    end

    it 'prints a full statement with a deposit and withdrawal' do
      allow(account).to receive(:statement).and_return ["#{Time.now.strftime('%d/%m/%Y')} || || 500.00 || 2500.00\n#{Time.now.strftime('%d/%m/%Y')} || 2000.00 || || 3000.00\n#{Time.now.strftime('%d/%m/%Y')} || 1000.00 || || 1000.00"]
      expect(statement.print).to eq("date || credit || debit || balance\n #{Time.now.strftime('%d/%m/%Y')} || || 500.00 || 2500.00\n#{Time.now.strftime('%d/%m/%Y')} || 2000.00 || || 3000.00\n#{Time.now.strftime('%d/%m/%Y')} || 1000.00 || || 1000.00")
    end
  end
end
