require 'spec_helper'

describe Types::Int do
  let(:cell) { described_class.new('1') }

  context 'lines' do
    context 'without min_length' do
      it 'returns lines array without changes' do
        expect(cell.output).to eq ['1']
      end
    end

    context 'with min_length' do
      it 'returns array of lines with rjust' do
        expect(cell.output(8)).to eq ['       1']
      end
    end
  end
end
