require 'spec_helper'

describe ASCII::Row do
  let(:table_row) { ASCII::Row.new(int: '1', string: 'abc') }

  context 'cells' do
    let(:row_generator) { double(RowGenerator) }

    it 'calls create on RowGenerator' do
      expect(RowGenerator).to receive(:new).with(table_row.attributes).and_return(row_generator)
      expect(row_generator).to receive(:call)
      table_row.cells
    end
  end
end
