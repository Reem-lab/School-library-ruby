require_relative './person'
require_relative './classroom'

class Student < Person
  attr_accessor :classroom

  def initialize(age, classroom, name = 'Unknown', parent_permission: true)
    super(age, name: name, parent_permission: parent_permission)
    @classroom = classroom
  end

  def classrooms
    @classroom = classroom
    classroom.student.push(self) unless classroom.student.include?(self)
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
