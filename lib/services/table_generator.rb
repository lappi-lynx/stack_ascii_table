class TableGenerator
  attr_reader :file

  def initialize(file)
    @file = file
  end

  def call
    CSV.foreach(file, csv_options) { |row| table.add_row(row) }

    table
  end

  private

  def table
    @table ||= ASCII::Table.new
  end

  def csv_options
    { headers: true, col_sep: ';', header_converters: :symbol }
  end
end
