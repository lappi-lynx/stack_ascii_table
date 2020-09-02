module Types
  class Str < Base
    def output(length = 0)
      words.map { |word| word.ljust(length) }
    end

    private

    def words
      @words ||= value.split(' ')
    end
  end
end
