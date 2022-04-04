require './person'

class Teacher < Person
  def initialize(id, name, age, parent_permission, specialization)
    super(id, name, age, parent_permission)
    @specialization = specialization
  end

  def can_use_services
    true
  end
end

# teacher1 = Teacher.new(5, 'mohamed', 28, true, 'chenistry')
