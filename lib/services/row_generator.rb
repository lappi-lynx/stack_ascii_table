class RowGenerator
  attr_reader :row_attributes

  def initialize(row_attributes)
    @row_attributes = row_attributes
  end

  def call
    row_attributes.each_with_object([]) do |(type, value), result|
      result << cell_class_for(type).new(value)
    end
  end

  private

  def cell_class_for(type)
    case type
    when :int
      Types::Int
    when :money
      Types::Money
    when :string
      Types::Str
    else
      Types::Base
    end
  end
end
