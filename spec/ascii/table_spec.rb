require 'spec_helper'

describe ASCII::Table do
  let(:table) { described_class.new }

  context 'render' do
    let(:table_presenter) { double(TablePresenter) }

    it 'calls render on TablePresenter' do
      expect(TablePresenter).to receive(:new).with(table).and_return(table_presenter)
      expect(table_presenter).to receive(:call)
      table.to_s
    end
  end

  context 'add_row' do
    it 'adds row to rows' do
      expect { table.add_row(int: '1', string: 'abc') }.to change { table.rows.count }.from(0).to(1)
    end
  end
end
