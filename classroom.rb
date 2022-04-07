class ClassRoom
  attr_accessor :label
  attr_reader :student

  def initialize(label)
    @label = label
    @student = []
  end

  def add_student(std)
    @student.push(std)
    student.classroom = self
  end
end
