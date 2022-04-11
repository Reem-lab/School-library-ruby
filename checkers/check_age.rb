module CheckAge
  def check_age
    age = 0
    loop do
      print 'age:'
      input_age = gets.chomp.to_i
      if input_age.is_a?(Integer) && input_age.positive?
        age = input_age
        break
      else
        puts 'please, Enter a positive number!'
      end
    end
    age
  end
end
