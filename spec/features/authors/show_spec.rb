require "rails_helper.rb"

RSpec.describe "Author Show page", type: :feature do
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

  it "User can visit Author Show Page via link" do

    visit books_path

      within "#book-id-#{@book2.id}" do
        click_link @author2.name
      end

      expect(current_path).to eq("/authors/#{@author2.id}")

      expect(page).to have_content(@author2.name)
      expect(page).to have_content(@book2.title)
      expect(page).to have_content(@book3.title)
      expect(page).to have_content(@author2.average_pages)

  end

end

# As a user,
# When I visit the Book Index Page,
#   Then I see each author's name is a link
# When I click the link
#   Then I am taken to an Author Show Page where I see the author with that id including the author's:
#   - name
#   - the title of each book they have written
#   - the average number of pages for all of their books
