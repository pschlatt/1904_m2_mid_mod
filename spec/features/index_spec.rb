require "rails_helper.rb"

RSpec.describe "Book Index", type: :model do
  before :each do
    @book1 = Book.create!(title: "The Great Gatsby", number_of_pages: 148, publication_year: 1925)
    @book2 = Book.create!(title: "Brave New World", number_of_pages: 311, publication_year: 1932)
    @book3 = Book.create!(title: "Eyeless In Gaza", number_of_pages: 619, publication_year: 1936)
    @book4 = Book.create!(title: "The Catcher In The Rye", number_of_pages: 277, publication_year: 1951)
    @author1 = Author.create!(name: "F. Scott Fitzgerald")
    @author2 = Author.create!(name: "Aldous Huxley")
    @author3 = Author.create!(name: "J.D. Salinger")

    @book1.authors << @author1
    @book2.authors << @author2
    @book3.authors << @author2
    @book4.authors << @author3


  end

end

# As a user,
# When I visit '/books'
# Then I see each book in the system including the book's:
#   - title
#   - number of pages
#   - publication year
#   - the name of each author that wrote the book
