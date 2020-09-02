module Types
  class Base
    attr_reader :value

    def initialize(value)
      @value = value || ''
    end

    def output(length = 0)
      [value.ljust(length)]
    end
  end
end
