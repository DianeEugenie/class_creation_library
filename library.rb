class Library

  def initialize(books)
    @books = books
  end

  def get_books()
    return @books
  end

  def get_book_info(title)
    for book in @books
      return book if title == book[:title]
    end
  end

end
