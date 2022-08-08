require './app'

def main_menu
  puts 'Welcome to School library App!'
  puts 'Please choose an option by entering a number:
  1 - List all books
  2 - List all people
  3 - Create a person
  4 - Create a book
  5 - Create a rental
  6 - List all rentals for a given person id
  7 - Exit'
end

<<<<<<< HEAD
def selection(books, people, rentals)
  loop do
    main_menu
    selection = gets.chomp.to_i
    case selection
    when 1
      list_all_books(books)
    when 2
      list_all_people(people)
    when 3
      create_person(people)
    when 4
      create_book(books)
    when 5
      create_rental(books, people, rentals)
    when 6
      list_all_rentals_by_id(rentals)
    else
      puts 'Goodbye, see you some other time'
    end
  end
=======
def main
  app = App.new
  app.selection
>>>>>>> 33fa88d19f86753ec27d1ddf1f262b79998913c1
end

main
