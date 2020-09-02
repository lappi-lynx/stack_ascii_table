require 'spec_helper'

describe RowPresenter do
  context 'render' do
    let(:row_presenter) { described_class.new(row, [2, 4, 8]) }
    let(:row)           { ASCII::Row.new(int: '6', string: 'a bb ccc', money: '0.001') }
    let(:expected_result) do
      %q(
| 6|a   |    0,01|
|  |bb  |        |
|  |ccc |        |
).chop
    end

    it { expect(row_presenter.call).to eq(expected_result) }
  end
end
