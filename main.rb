require_relative './app'

def print_question
  puts "Please choose an option by enterin a number:
    1- List all books.
    2- List all people.
    3- Create a person.
    4- Create a book.
    5- Create a rental.
    6- List all rentals for a given person id.
    7- Exit."
end

def main
  app = App.new
  puts 'Welcome to School library App! 🎉'
  loop do
    print_question
    selected_option = app.select_opt
    break if selected_option == 7
  end
  puts 'Thanks for using this App!! ✨'
end

main
