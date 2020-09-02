class TablePresenter
  HORIZONTAL_BORDER = '-'.freeze
  VERTICAL_BORDER = '|'.freeze
  BORDERS_INTERSECTION = '+'.freeze

  attr_reader :table

  def initialize(table)
    @table = table
  end

  def call
    header + rows.join(footer) + footer
  end

  private

  def header
    BORDERS_INTERSECTION + (HORIZONTAL_BORDER * width) + BORDERS_INTERSECTION
  end

  def footer
    @footer ||= column_widths.each_with_object("\n+") do |column_width, result|
      result << HORIZONTAL_BORDER * column_width
      result << BORDERS_INTERSECTION
    end
  end

  def width
    column_separators_number = table.rows[0].attributes.count - 1
    column_widths.sum + column_separators_number
  end

  def rows
    table.rows.map { |row| RowPresenter.new(row, column_widths).call }
  end

  def column_widths
    @column_widths ||= table.rows.each_with_object([]) do |table_row, result|
      table_row.cells.each_with_index do |cell, index|
        cell.output.each do |line|
          next if line.empty?

          width = line.size
          result[index] = width if width > result.fetch(index, 0)
        end
      end
    end
  end
end
