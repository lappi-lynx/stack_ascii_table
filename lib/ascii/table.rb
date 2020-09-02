module ASCII
  class Table
    def add_row(row_attributes)
      rows << Row.new(row_attributes)
    end

    def rows
      @rows ||= []
    end

    def to_s
      TablePresenter.new(self).call
    end
  end
end
