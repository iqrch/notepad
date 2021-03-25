class Link < Post
  def initialize
    super

    @url = ""
  end

  def read_from_console
    puts "введите адрес ссылки^"
    @url = STDIN.gets.chomp

    puts "Описание"
    @text = STDIN.gets.chomp

  end

  def to_strings
    time_string = "Создано: #{@created_at.strftime("%Y.%m.%d, %T")} \n\r \n\r"

    return @text.unshift(time_string)

    return [@url, @text, time_string]
  end
end

