require_relative './spec_helper'

describe Student do
  before :each do
    @student = Student.new 15, 'name', parent_permission: false, id: 81
  end

  describe '#new' do
    it 'takes four parameters and returns a Student object' do
      @student.should be_an_instance_of Student
    end
  end

  describe '#age' do
    it 'returns the correct age' do
      @student.age.should eql 15
    end
  end

  describe '#name' do
    it 'returns the correct name' do
      @student.name.should eql 'name'
    end
  end

  describe '#parent_permission' do
    it 'returns the correct parent_permission ' do
      @student.parent_permission.should eql false
    end
  end

  describe '#id' do
    it 'returns the correct id' do
      @student.id.should eql 81
    end
  end

  describe 'Assign new classroom to student'
  it 'accepts a new classroom' do
    classroom = ClassRoom.new('math')
    @student.classrooms(classroom)
    @student.classroom.label.should eql 'math'
  end
end
