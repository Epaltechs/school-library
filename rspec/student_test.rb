require_relative 'rspec_test'

describe Student do
  before :each do
    @student = Student.new('grade1', 12, 'Student', nil, parent_permission: false)
  end

  context 'once we create a student' do
    it 'return Student object' do
      expect(@student).to be_an_instance_of(Student)
    end

    it 'return correct name, age, classroom' do
      expect(@student.name).to eql 'Student'
      expect(@student.age).to equal 12
      expect(@student.classroom).to eql 'grade1'
    end

    it 'student has no parent permission' do
      expect(@student.parent_permission).to be_falsey
    end

    it 'return id in range of 0 - 1000' do
      expect(@student.id).to be_between(0, 1000).inclusive
    end
  end

  context 'call play_hooky method' do
    it 'return special-character string' do
      expect(@student.play_hooky).to eql("¯\(ツ)/¯")
    end
  end
end
