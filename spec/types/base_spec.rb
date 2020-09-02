require 'spec_helper'

describe Types::Base do
  let(:cell) { described_class.new('aaa') }

  context 'lines' do
    context 'without min_length' do
      it 'returns lines array without changes' do
        expect(cell.output).to eq ['aaa']
      end
    end

    context 'with min_length' do
      it 'returns array of lines with rjust' do
        expect(cell.output(8)).to eq ['aaa     ']
      end
    end
  end
end
