class App
  # ...

  def create_book
    print 'Enter book title: '
    title = gets.chomp
    print 'Enter author: '
    author = gets.chomp

    @library.create_book(title: title, author: author)
    puts 'Book created successfully.'
  end

  def create_rental
    puts 'Select a person to create a rental for:'
    list_all_people
    print 'Enter the position of the person: '
    person_position = gets.chomp.to_i

    puts 'Select a book to create a rental for:'
    list_all_books
    print 'Enter the position of the book: '
    book_position = gets.chomp.to_i

    print 'Enter rental date: '
    date = gets.chomp

    @library.create_rental(person_position, book_position, date)
    puts 'Rental created successfully.'
  end

  def create_person
    print 'Enter person name: '
    name = gets.chomp
    print 'Choose role (1 for teacher, 2 for student): '
    role_choice = gets.chomp.to_i

    role = case role_choice
           when 1
             'teacher'
           when 2
             'student'
           else
             'unknown'
           end

    person = @library.create_person(name: name, role: role)
    puts "#{person.role.capitalize} created successfully."
  end
end
