require './person'
require './student'
require './teacher'
require './capitalize_decorator'
require './trimmer_decorator'
require './book'
require './rental'
require './classroom'

#---------------------decorate a class-------------------
person = Person.new(22, 'maximilianus')
puts person.correct_name
# => maximilianus

capitalized_person = CapitalizeDecorator.new(person)
puts capitalized_person.correct_name
# => Maximilianus

capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
puts capitalized_trimmed_person.correct_name
# => Maximilian

#---------------------set up associations-------------------
person1 = Person.new(45, 'Emma')
person2 = Person.new(65, 'Brian')
person1.add_rental(Book.new('The Finished Mystery', 'wt'), '1945-01-01')

book1 = Book.new('Hardware or Software-Which?', 'Emma Paul')
book2 = Book.new('Eat That Frog', 'Brian Tracy')
book2.add_rental(Person.new(25, 'Nelson'), '2021-5-4')

Rental.new('2018-12-02', book1, person1)
Rental.new('2012-12-31', book1, person2)

puts person1.rentals.count
# 2
puts person1.rentals.map(&:date)
# "1945-01-01"
# "2018-12-02"
puts book2.rentals.count
# 1
puts book1.rentals.count
# 2
