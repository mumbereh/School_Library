class Book
  attr_accessor :title, :author

  has_many :rentals

  def initialize(title, author)
    @title = title
    @author = author
  end

  def add_rental(person, date)
    Rental.new(date, self, person)
  end
end
