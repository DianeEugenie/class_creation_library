require('pry')

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

  def get_rental_info(title)
    get_book_info(title)[:rental_details]
  end

  def add_new_book(title)
    #binding.pry
    @books.push({title: title,
    rental_details: {
      student_name: "",
      date: ""
      }
    })
  end

  def change_rent_details(title, student, date)
    get_rental_info(title)[:student_name] = student
    get_rental_info(title)[:date] = date
  end




end
