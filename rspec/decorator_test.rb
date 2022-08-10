require_relative 'rspec_test'

describe Decorator do
  before :each do
    @person = Person.new(33, 'emmanuelpaul')
  end

  context 'CapitalizeDecorator' do
    it 'capitalize first letter of name' do
      capitalizer = CapitalizeDecorator.new(@person)
      expect(capitalizer.correct_name).to eql('Emmanuelpaul')
    end
  end
  context 'TrimmerDecorator' do
    it 'trim name with more than 10 character' do
      trimmer = TrimmerDecorator.new(@person)
      expect(trimmer.correct_name).to eql('emmanuelpa')
      expect(trimmer.correct_name.length).to be <= 10
    end
  end
end