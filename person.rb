class Person
  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  attr_reader :id
  attr_accessor :name, :age

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
