require 'spec_helper'

describe Types::Money do
  let(:cell) { described_class.new('1000.33') }

  context 'lines' do
    context 'without min_length' do
      it 'returns lines array without changes' do
        expect(cell.output).to eq ['1 000,33']
      end
    end

    context 'with min_length' do
      it 'returns array of lines with rjust' do
        expect(cell.output(10)).to eq ['  1 000,33']
      end
    end

    context 'with value which requires rounding' do
      let(:cell) { described_class.new('0.001') }

      it 'returns array of rounded lines' do
        expect(cell.output).to eq ['0,01']
      end
    end

    context 'without decimal part' do
      let(:cell) { described_class.new('10000.00') }

      it 'returns array of rounded lines' do
        expect(cell.output).to eq ['10 000,00']
      end
    end
  end
end
