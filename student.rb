require_relative './person'
require_relative './classroom'

class Student < Person
  attr_accessor :classroom

  def initialize(age, name, parent_permission: true, id: Random.rand(1..1000))
    super(age, name, parent_permission: parent_permission, id: id)
    @classroom = nil
  end

  def classrooms
    @classroom = classroom
    classroom.student.push(self) unless classroom.student.include?(self)
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
