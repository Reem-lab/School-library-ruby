require_relative './spec_helper'

describe Book do

  before :each do
    @book = Book.new "Title", "Author"
end

describe "#new" do
    it "takes two parameters and returns a Book object" do
        @book.should be_an_instance_of Book
    end
end

describe "#title" do
    it "returns the correct title" do
        @book.title.should eql "Title"
    end
end

describe "#author" do
    it "returns the correct author" do
        @book.author.should eql "Author"
    end
end

describe "Assign new book to person"
it "accepts new books" do
  person1 = Person.new(45, "Mark Boulton") 
   @book.add_rental(person1, "12/5/2020")
  expect(@book.rentals.include?person1).to eql true 
end

end