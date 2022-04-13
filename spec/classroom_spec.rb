require_relative './spec_helper'

describe ClassRoom do
  before :each do
    @classroom1 = ClassRoom.new 'Sixth Grade'
  end

  describe '#new' do
    it 'takes one parameters and returns a ClassRoom object' do
      @classroom1.should be_an_instance_of ClassRoom
    end
  end

  describe '#label' do
    it 'returns the correct label' do
      @classroom1.label.should eql 'Sixth Grade'
    end
  end

  describe 'Assign new student to classroom'
  it 'accepts new student' do
    student1 = Student.new(10, 'Johnny')
    @classroom1.add_student(student1)
    expect(@classroom1.student.include?(student1)).to eql true
  end
end
