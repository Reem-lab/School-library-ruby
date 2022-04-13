require_relative './spec_helper'

describe Rental do
  before :each do
    @rental = Rental.new '15/2/2020', 'person', 'book'
  end

  describe '#new' do
    it 'takes three parameters and returns a Rental object' do
      @rental.should be_an_instance_of Rental
    end
  end

  describe '#date' do
    it 'returns the correct date' do
      @rental.date.should eql '15/2/2020'
    end
  end

  describe '#person' do
    it 'returns the correct person' do
      @rental.person.should eql 'person'
    end
  end

  describe '#book' do
    it 'returns the correct book' do
      @rental.book.should eql 'book'
    end
  end
end
