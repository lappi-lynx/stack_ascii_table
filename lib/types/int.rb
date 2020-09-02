module Types
  class Int < Base
    def output(length = 0)
      [value.rjust(length)]
    end
  end
end
