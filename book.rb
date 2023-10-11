class Book
  attr_accessor :title, :author

  has_many :rentals

  def initialize(title, author)
    @title = title
    @author = author
  end
end
