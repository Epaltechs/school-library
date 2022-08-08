require './user_input'

class List
  attr_reader :people, :books, :rentals

  def initialize(people, books, rentals)
    @people = people
    @books = books
    @rentals = rentals
  end

  def list_all_books
    if @books.empty?
      puts 'No book found!'
    else
      @books.each { |book| puts "Title: '#{book.title}', Author: #{book.author}" }
    end
  end

  def list_all_people
    if @people.empty?
      puts 'No person found!'
    else
      @people.each { |person| puts "[#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}" }
    end
  end

  def list_all_rentals_by_id(rentals)
    print 'ID of person: '
    person_id = gets.chomp.to_i
      rentals.map do |rental|
      puts "Date: #{rental.date}, Book: #{rental.book.title} by #{rental.book.author}" if rental.person.id == person_id
   end
  end
end
