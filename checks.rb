module Checks
  def check_number(msg)
    number = 0
    loop do
      print msg
      input = gets.chomp.to_i
      if input.is_a?(Integer) && input.positive?
        number = input
        break
      else
        puts 'Please, enter a valid input!'
      end
    end
    number
  end

  def check_options(msg, options)
    number = 0
    loop do
      print msg
      input = gets.chomp.to_i
      if options.include?(input)
        number = input
        break
      else
        puts 'Please, enter a valid input!'
      end
    end
    number
  end
end
