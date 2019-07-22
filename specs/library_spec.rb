# Model a Library as a class.
#
# Create a class for a Library that has an array of books. Each book should be a hash with a title, which is a string, and rental details, which is another hash with a student name and due date.
# This should look something like:
#
#   {
#     title: "lord_of_the_rings",
#     rental_details: {
#      student_name: "Jeff",
#      date: "01/12/16"
#     }
#   }
# Create a getter for the books
# Create a method that takes in a book title and returns all of the information about that book.
# Create a method that takes in a book title and returns only the rental details for that book.
# Create a method that takes in a book title and adds it to our book list (add a new hash for the book with the student name and date being left as empty strings)
# Create a method that changes the rental details of a book by taking in the title of the book, the student renting it and the date it's due to be returned.


require('minitest/autorun')
require('minitest/rg')
require_relative('../library.rb')

class TestLibrary < MiniTest::Test

  def setup()
    @library = Library.new([
      {title: "lord_of_the_rings",
        rental_details: {
         student_name: "Jeff",
         date: "01/12/16"
        }
      },
      {
        title: "harry_potter",
        rental_details: {
        student_name: "Maria",
        date: "22/07/19"
        }
      }]
    )
  end

  # Create a getter for the books

  def test_get_books()
    assert_equal({title: "lord_of_the_rings",
      rental_details: {
       student_name: "Jeff",
       date: "01/12/16"
      }
    }, @library.get_books()[0])
  end

  # Create a method that takes in a book title and returns all of the information about that book.

  def test_get_book_info()
    assert_equal({
      title: "harry_potter",
      rental_details: {
      student_name: "Maria",
      date: "22/07/19"
      }
    }, @library.get_book_info("harry_potter"))
  end


end
