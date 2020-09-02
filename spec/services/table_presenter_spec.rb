require 'spec_helper'

describe TablePresenter do
  let(:csv_file) { File.new('./spec/fixtures/example.csv') }
  let(:table)    { TableGenerator.new(csv_file).call }
  let(:expected_result) do
    %q(+-----------------+
| 1|aaa | 1 000,33|
|  |bbb |         |
|  |ccc |         |
+--+----+---------+
| 5|aaaa|     0,01|
|  |bbb |         |
+--+----+---------+
|13|aa  |10 000,00|
|  |bbbb|         |
+--+----+---------+
).chop
  end

  context 'call' do
    it 'renders the whole table' do
      expect(described_class.new(table).call).to eq expected_result
    end
  end
end
