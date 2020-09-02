require 'spec_helper'

describe TableGenerator do
  let(:csv_file)        { File.new('./spec/fixtures/example.csv') }
  let(:table_generator) { TableGenerator.new(csv_file) }

  context 'call' do
    it 'returns table' do
      expect(table_generator.call).to be_a_kind_of(ASCII::Table)
    end

    context 'table' do
      let(:table) { table_generator.call }

      it 'has 3 rows' do
        expect(table.rows.count).to eq 3
      end
    end
  end
end

