module ASCII
  class Row
    attr_reader :attributes

    def initialize(attributes)
      @attributes = attributes
    end

    def cells
      @cells ||= RowGenerator.new(attributes).call
    end
  end
end
