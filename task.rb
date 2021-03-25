require 'date'

class Task < Post
  def initialize
    super

    due_date = Time.now
  end
  def read_from_console
    puts "Имя события"
    @text = STDIN.gets.chomp

    puts "дата события в формате ДД:ММ:ГГГГ"
    input = STDIN.gets.chomp

    @due_date = Date.parse(input)
  end

  def to_strings
    time_string = "Создано: #{@created_at.strftime("%Y.%m.%d, %T")} \n\r \n\r"

    deadline = "Крайний срок: #{@due_date}"

    return [deadline, @text, time_string]
  end
end