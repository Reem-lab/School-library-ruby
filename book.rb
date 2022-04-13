class Book
  attr_accessor :title, :author, :rentals

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  def add_rental(person, _date)
    @rentals.push(person)
    person.rentals = self
  end
end
