require_relative 'rspec_test'

describe 'Teacher with few input' do
  before :each do
    @teacher = Teacher.new('computer', 44)
  end

  it 'return correct specialization, age' do
    expect(@teacher.specialization).to eql 'computer'
    expect(@teacher.age).to be 44
  end

  it 'return default name' do
    expect(@teacher.name).to eql 'Unknown'
  end

  it 'return id in range of 0 - 1000' do
    expect(@teacher.id).to be_between(0, 1000).inclusive
  end

  it 'Allowed to use service' do
    expect(@teacher.can_use_services?).to be_truthy
  end
end

describe 'Teacher with all input' do
  before :each do
    @teacher = Teacher.new('science', 45, 'paul', 20)
  end

  it 'return correct specialization, age, name, id' do
    expect(@teacher.specialization).to eql 'science'
    expect(@teacher.age).to be 45
    expect(@teacher.name).to eql 'paul'
    expect(@teacher.id).to eql 20
  end

  it 'Allowed to use service' do
    expect(@teacher.can_use_services?).to be_truthy
  end
end
