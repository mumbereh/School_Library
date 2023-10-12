class Library
  def initialize
    @people = []
    @books = []
    @rentals = []
  end

  # Method to create a person and add them to the library
  def create_person(id, name, role)
    person = Person.new(id, name, role)
    @people << person
    person
  end

  # Method to list all people in the library
  def list_all_people
    @people
  end

  # Method to create a book and add it to the library
  def create_book(id, title, author)
    book = Book.new(id, title, author)
    @books << book
    book
  end

  # Method to list all books in the library
  def list_all_books
    @books
  end

  # Method to create a rental and add it to the library
  def create_rental(id, person_id, book_id, date)
    person = find_person_by_id(person_id)
    book = find_book_by_id(book_id)

    if person && book
      rental = Rental.new(id, date, book, person)
      @rentals << rental
      rental
    else
      puts 'Invalid person or book selection.'
      nil
    end
  end

  # Method to list rentals for a specific person
  def list_rentals_for_person(person_id)
    person = find_person_by_id(person_id)
    if person
      @rentals.select { |rental| rental.person.id == person.id }
    else
      puts 'Person not found.'
      []
    end
  end

  private

  # Helper method to find a person by ID
  def find_person_by_id(id)
    @people.find { |person| person.id == id }
  end

  # Helper method to find a book by ID
  def find_book_by_id(id)
    @books.find { |book| book.id == id }
  end
end
