require_relative './spec_helper'

describe Teacher do
  before :each do
    @teacher = Teacher.new 50, 'politics', 'name', parent_permission: true, id: 154
  end

  describe '#new' do
    it 'takes five parameters and returns a Teacher object' do
      @teacher.should be_an_instance_of Teacher
    end
  end

  describe '#age' do
    it 'returns the correct age' do
      @teacher.age.should eql 50
    end
  end

  describe '#specialization' do
    it 'returns the correct specialization' do
      @teacher.specialization.should eql 'politics'
    end
  end

  describe '#name' do
    it 'returns the correct name' do
      @teacher.name.should eql 'name'
    end
  end

  describe '#parent_permission' do
    it 'returns the correct parent_permission ' do
      @teacher.parent_permission.should eql true
    end
  end

  describe '#id' do
    it 'returns the correct id' do
      @teacher.id.should eql 154
    end
  end
end
