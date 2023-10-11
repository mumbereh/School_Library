class Person
  attr_accessor :id, :name, :role

  def initialize(id, name, role)
    @id = id
    @name = name
    @role = role
  end
end

class Book
  attr_accessor :id, :title

  def initialize(id, title)
    @id = id
    @title = title
  end
end

class Rental
  attr_accessor :id, :person_id, :book_id

  def initialize(id, person_id, book_id)
    @id = id
    @person_id = person_id
    @book_id = book_id
  end
end

class Library
  def initialize
    @people = []
    @books = []
    @rentals = []
  end

  def list_all_people
    @people
  end

  def list_all_books
    @books
  end

  def create_person(id, name, role)
    person = Person.new(id, name, role)
    @people << person
    person
  end

  def create_book(id, title)
    book = Book.new(id, title)
    @books << book
    book
  end

  def create_rental(id, person_id, book_id)
    rental = Rental.new(id, person_id, book_id)
    @rentals << rental
    rental
  end

  def list_rentals_for_person(person_id)
    @rentals.select { |rental| rental.person_id == person_id }
  end
end
