class Person
  def initialize(id, age, name = "Unknown", parent_permission = true)
    @id = id
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  attr_reader :id, :name, :age
  attr_writer :name, :age

  private

  def is_of_age
    if @age.to_i >= 18
      return true
    else
      return false
    end
  end

  public

  def can_use_services
    if @parent_permission == true && is_of_age
      return true
    else
      false
    end
  end
end

person1 = Person.new(1, 22, "Reem", true)
