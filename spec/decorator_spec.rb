require_relative './spec_helper'

describe CapitalizeDecorator do
  before :each do
    @person = Person.new 45, 'reem'
   @capitalizedecorator = CapitalizeDecorator.new(@person)
  end

  describe '#new' do
    it 'takes one parameters and returns a CapitalizeDecorator object' do
     @capitalizedecorator.should be_an_instance_of CapitalizeDecorator
    end
  end

  describe '#nameable' do
    it 'returns the correct nameable' do
     @capitalizedecorator.correct_name.should eql 'REEM'
    end
  end


end
