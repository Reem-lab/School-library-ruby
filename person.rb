require_relative './decorateor'

class Person < Nameable
  attr_reader :id
  attr_accessor :name, :age, :rentals

  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def correct_name
    @name
  end

  def add_rental(book, _date)
    @rentals.push(book)
    rentals.person = self
  end

  def of_age?
    return true if @age.to_i >= 18

    false
  end

  private :of_age?

  def can_use_services?
    return true if @parent_permission == true || of_age?

    false
  end
end

person1 = Person.new(22, 'maximilianus')
puts person1.correct_name
capitalized_person = CapitalizeDecorator.new(person1)
puts capitalized_person.correct_name
capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
puts capitalized_trimmed_person.correct_name
