class Memo < Post
  def read_from_console
    puts "Новая запись:  (для завершения воода наберите \"end\"): "

    @text = []
    line = nil

    while line != "end" do
      line = STDIN.gets.chomp
      @text << line
    end

    @text.pop

  end

  def to_strings
    time_string = "Создано: #{@created_at.strftime("%Y.%m.%d, %T")} \n\r \n\r"

    return @text.unshift(time_string)
  end


end