class Person
  def initialize(id, age, name = 'Unknown', parent_permission: true)
    @id = id
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  attr_reader :id
  attr_accessor :name, :age

  private

  def of_age?
    return true if @age.to_i >= 18

    false
  end

  public

  def can_use_services?
    return true if @parent_permission == true && of_age?

    false
  end
end
