require './person.rb'

class Student < Person
  def initialize(id, name, age, parent_permission, classroom)
    super(id, name, age, parent_permission)
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end

student1 = Student.new(2, "nor", 23, true, 7)
student1.play_hooky
