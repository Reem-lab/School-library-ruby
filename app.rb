#!/usr/bin/env ruby
require_relative './student'
require_relative './teacher'
require_relative './book'
require_relative './rental'
require_relative './checkers/check_age'

class App
  include CheckAge

  def initialize
    @books = []
    @person = []
    @rentals = []
  end

  def select_opt
    option = gets.chomp
    option = option.to_i
    case option
    when 1 then list_books
    when 2 then list_people
    when 3 then create_person
    when 4 then create_book
    when 5 then create_rental
    when 6 then list_rentals
    when 7 then 7
    else
      puts 'Invalid number, please try again!'
    end
  end

  def create_person
    print 'Do you want to create a student (1) or a teacher (2)? [input the number]'
    num = gets.chomp
    num = num.to_i

    age = check_age

    print 'Name:'
    name = gets.chomp

    case num
    when 1
      print 'Has parent permission? [y/n]:'
      parent_permission = gets.chomp
      case parent_permission
      when 'y' then parent_permission = true
      when 'n' then parent_permission = false
      end
      @person.push(Student.new(age, name, parent_permission: parent_permission))
    when 2
      print 'Specialization:'
      specialization = gets.chomp
      @person.push(Teacher.new(age, specialization, name))
    else
      puts 'Invalid number, please enter number again!'
    end
    puts 'Person created successfully 🎉🎉'
  end

  def list_people
    @person.each do |per|
      puts "[#{per.class}] Name: #{per.name}, ID: #{per.id}, Age: #{per.age}"
    end
  end

  def list_books
    @books.each do |book|
      puts "Title: #{book.title}, Author: #{book.author}"
    end
  end

  def create_book
    print 'Title:'
    title = gets.chomp

    print 'author:'
    author = gets.chomp

    @books.push(Book.new(title, author))

    puts 'Book created successfully 🎉🎉 '
  end

  def create_rental
    puts 'Select a book from the following list by number '
    @books.each_with_index do |book, index|
      puts "#{index}) Title: #{book.title}, Author: #{book.author}"
    end
    book_num = gets.chomp
    book_num = book_num.to_i

    puts 'Select a person from the following list by number (not id)'
    @person.each_with_index do |per, index|
      puts "No: #{index}, [#{per.class}] Name: #{per.name}, ID: #{per.id}, Age: #{per.age}"
    end
    person_num = gets.chomp
    person_num = person_num.to_i

    print 'Date:'
    date = gets.chomp

    @rentals.push(Rental.new(date, @person[person_num], @books[book_num]))
    puts 'Rental Created successfully 🎉🎉 '
  end

  def list_rentals
    print 'Id of person:'
    id_person = gets.chomp
    id_person = id_person.to_i

    puts 'Rentals'
    @rentals.each do |rental|
      puts "Date: #{rental.date} Book: #{rental.book.title} by #{rental.book.author} " if rental.person.id == id_person
    end
  end
end
