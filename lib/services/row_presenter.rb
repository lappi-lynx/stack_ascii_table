class RowPresenter
  attr_reader :table_row, :column_widths

  def initialize(table_row, column_widths)
    @table_row = table_row
    @column_widths = column_widths
  end

  def call
    (0...lines_count).each_with_object('') do |line_number, result|
      result << render_line(line_number)
    end
  end

  private

  def lines_count
    table_row.cells.map { |cell| cell.output.size }.max
  end

  def render_line(line_number)
    "\n" +
    TablePresenter::VERTICAL_BORDER +
    line_values_for(line_number).join(TablePresenter::VERTICAL_BORDER) +
    TablePresenter::VERTICAL_BORDER
  end

  def line_values_for(line_number)
    table_row.cells.map.with_index do |cell, index|
      column_width = column_widths[index]
      cell.output(column_width).fetch(line_number, blank_line(column_width))
    end
  end

  def blank_line(width)
    ' ' * width
  end
end
