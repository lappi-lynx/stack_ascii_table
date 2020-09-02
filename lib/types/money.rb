module Types
  class Money < Base
    def output(length = 0)
      [transformed_value.rjust(length)]
    end

    private

    def transformed_value
      # round
      # add space delimeter for thousands
      # replace . with ,
      format('%.2f', value.to_f.ceil(2))
        .gsub(/(\d)(?=\d{3}+\.)/, '\1 ')
        .gsub('.', ',')
    end
  end
end
