require_relative './person'

class Teacher < Person
  attr_accessor :specialization

  def initialize(age, specialization, name, parent_permission: true, id: Random.rand(1..1000))
    super(age, name, parent_permission: parent_permission, id: id)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
