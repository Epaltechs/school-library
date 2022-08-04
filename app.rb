require './book'
require './student'
require './teacher'
require './rental'

  def list_all_books(books)
    if books.empty?
      puts 'No book found!'
    else
      books.each { |book| puts "Title: '#{book.title}', Author: #{book.author}" }
    end
  end

  def list_all_people(people)
    if people.empty?
      puts 'No person found!'
    else
      people.each { |person| puts "[#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}" }
    end
  end

  def create_person(people)
    puts 'Do you want create student (1) or teacher (2)? [Enter the number]: '
    person_type = gets.chomp.to_i
    case person_type
    when 1
      print 'Enter student name: '
      name = gets.chomp
      print 'Enter age: '
      age = gets.chomp
      @people.push(Student.new('classroom', age, name))
      puts "Student created successfully"
    when 2
      print 'Enter teacher name: '
      name = gets.chomp
      print 'Enter age: '
      age = gets.chomp
      print 'Enter specialization: '
      specialization = gets.chomp
      @people.push(Teacher.new(specialization, age, name))
      puts "Person created successfully"
    end
  end

  def create_book(books)
    puts 'Create a new book'
    print 'Enter title: '
    title = gets.chomp
    print 'Enter author: '
    author = gets.chomp
    books.push(Book.new(title, author))
    puts 'Book created successfully.'
  end

  def create_rental(books, people, rentals)
    puts 'Select a book from the following list by number'
    books.map.with_index { |book, index| puts "#{index}) Title: '#{book.title}', Author: #{book.author}" }
    selected_book = gets.chomp.to_i

    puts 'Select a person from the following list by number (Not ID): '
    people.map.with_index do |person, index|
      puts "#{index}) [#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end

    selected_person = gets.chomp.to_i

    print 'Date: '
    provided_date = gets.chomp

    rentals.push(Rental.new(provided_date, people[selected_person], books[selected_book]))
    puts 'Rental created successfully.'
  end

  def list_all_rentals_by_id(rentals)
    print 'ID of person: '
    person_id = gets.chomp.to_i
    rentals.map do |rental|
      puts "Date: #{rental.date}, Book: #{rental.book.title} by #{rental.book.author}" if rental.person.id == person_id
    end
  end
