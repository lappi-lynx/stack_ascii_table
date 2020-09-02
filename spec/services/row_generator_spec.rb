require 'spec_helper'

describe RowGenerator do
  context 'create' do
    let(:row_generator) { described_class.new(int: '1', money: '0.001', string: 'abc', smth: 'zxv') }
    let(:cols) { row_generator.call }

    it 'returns 4 different cols' do
      expect(cols.count).to eq 4
      expect(cols[0]).to be_a_kind_of(Types::Int)
      expect(cols[1]).to be_a_kind_of(Types::Money)
      expect(cols[2]).to be_a_kind_of(Types::Str)
      expect(cols[3]).to be_a_kind_of(Types::Base)
    end
  end
end
