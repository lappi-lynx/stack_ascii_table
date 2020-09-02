require 'spec_helper'

describe Types::Str do
  context 'lines' do
    context 'one word' do
      let(:cell) { described_class.new('aaa') }

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

    context 'sentence' do
      let(:cell) { described_class.new('a bb cccc ddd') }

      context 'without min_length' do
        it 'returns lines array without changes' do
          expect(cell.output).to eq ['a', 'bb', 'cccc', 'ddd']
        end
      end

      context 'with min_length' do
        it 'returns array of lines with rjust' do
          expect(cell.output(4)).to eq ['a   ', 'bb  ', 'cccc', 'ddd ']
        end
      end
    end
  end
end
