require_relative './person'

class Teacher < Person
  def initialize(id, age, name, parent_permission, specialization)
    super(id, age, name, parent_permission)
    @specialization = specialization
  end

  def can_use_services
    true
  end
end
