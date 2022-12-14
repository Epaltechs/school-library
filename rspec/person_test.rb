require_relative 'rspec_test'

describe 'Person with few input' do
  before :each do
    @person = Person.new(55)
  end

  it 'return Person object' do
    expect(@person).to be_an_instance_of(Person)
  end

  it 'return correct age' do
    expect(@person.age).to eql 55
  end

  it 'return default name, parent_permission' do
    expect(@person.name).to eql('Unknown')
    expect(@person.parent_permission).to be true
  end

  it 'return id in range of 0 - 1000' do
    expect(@person.id).to be_between(0, 1000).inclusive
  end

  it 'Person can use service' do
    expect(@person.can_use_services?).to eql true
  end
end

describe 'Person with all input' do
  before :each do
    @person = Person.new(10, 'ademola', id: 345, parent_permission: false)
  end

  it 'return Person object' do
    expect(@person).to be_an_instance_of(Person)
  end

  it 'return correct age, name,id' do
    expect(@person.age).to eql 10
    expect(@person.name).to eql('ademola')
    expect(@person.id).to eql 345
  end

  it 'Has no parent_permission' do
    expect(@person.parent_permission).to be false
  end

  it 'Person can use service' do
    expect(@person.can_use_services?).to eql false
  end
end
