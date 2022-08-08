require './book'
require './student'
require './teacher'
require './rental'
require './list_items'
require './create_items'

class App
  def initialize
    @people = []
    @books = []
    @rentals = []
    @list = List.new(@books, @people, @rentals)
    @create = Create.new(@books, @people, @rentals)
  end

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
        exit
      end
    end
    main_menu
  end
end
