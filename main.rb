require_relative 'app'

def main
  library = Library.new
  menu_options = {
    1 => method(:list_all_books),
    2 => method(:list_all_people),
    3 => method(:create_person),
    4 => method(:create_book),
    5 => method(:create_rental),
    6 => method(:list_rentals_for_person),
    7 => method(:exit_program)
  }

  loop do
    display_menu
    choice = gets.chomp.to_i

    action = menu_options[choice]

    if action
      action.call(library)
    else
      invalid_choice
    end
  end
end

def display_menu
  puts 'Library Management System'
  puts '1. List all books'
  puts '2. List all people'
  puts '3. Create a person'
  puts '4. Create a book'
  puts '5. Create a rental'
  puts '6. List rentals for a person'
  puts '7. Quit'
  print 'Enter your choice: '
end

def list_all_books(library)
  books = library.list_all_books
  books.each { |book| puts "Book ID: #{book.id}, Title: #{book.title}" }
end

def list_all_people(library)
  people = library.list_all_people
  people.each { |person| puts "Person ID: #{person.id}, Name: #{person.name}, Role: #{person.role}" }
end

def create_person(library)
  print 'Enter person ID: '
  id = gets.chomp
  print 'Enter person name: '
  name = gets.chomp
  print 'Enter person role (teacher or student): '
  role = gets.chomp
  library.create_person(id, name, role)
  puts 'Person created successfully.'
end

def create_book(library)
  print 'Enter book ID: '
  id = gets.chomp
  print 'Enter book title: '
  title = gets.chomp
  library.create_book(id, title)
  puts 'Book created successfully.'
end

def create_rental(library)
  print 'Enter rental ID: '
  id = gets.chomp
  print 'Enter person ID: '
  person_id = gets.chomp
  print 'Enter book ID: '
  book_id = gets.chomp
  library.create_rental(id, person_id, book_id)
  puts 'Rental created successfully.'
end

def list_rentals_for_person(library)
  print 'Enter person ID to list rentals: '
  person_id = gets.chomp
  rentals = library.list_rentals_for_person(person_id)
  rentals.each { |rental| puts "Rental ID: #{rental.id}, Person ID: #{rental.person_id}, Book ID: #{rental.book_id}" }
end

def exit_program
  puts 'Goodbye!'
  exit
end

def invalid_choice
  puts 'Invalid choice. Please try again.'
end

main
