require './book'
require './student'
require './teacher'
require './rental'
require './create_lists'
require './create_items'

class App
  def initialize
    @people = []
    @books = []
    @rentals = []
    @list = List.new(@books, @people, @rentals)
    @create = Create.new(@books, @people, @rentals)
  end

  def selection
    loop do
      main_menu
      case gets.chomp.to_i
      when 1
        @list.list_all_books
      when 2
        @list.list_all_people
      when 3
        @create.create_person
      when 4
        @create.create_book
      when 5
        @create.create_rental
      when 6
        @list.list_all_rentals_by_id
      else
        exit
      end
    end
    main_menu
  end
end
