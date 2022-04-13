require_relative './spec_helper'

describe Person do

  before :each do
    @person = Person.new "age", "name", parent_permission: true , id: 42
end

describe "#new" do
    it "takes four parameters and returns a Person object" do
        @person.should be_an_instance_of Person
    end
end

describe "#age" do
    it "returns the correct age" do
        @person.age.should eql "age"
    end
end

describe "#name" do
    it "returns the correct name" do
        @person.name.should eql "name"
    end
end

describe "#parent_permission" do
    it "returns the correct parent_permission " do
        @person.parent_permission.should eql true
    end
end

describe "#id" do
    it "returns the correct id" do
        @person.id.should eql 42
    end
end

describe "Assign new person to book"
it "accepts new person" do
  book1 = Book.new("lord of rings", "Mark") 
   @person.add_rental(book1, "10/8/2020")
  expect(@person.rentals.include?book1).to eql true 
end

end