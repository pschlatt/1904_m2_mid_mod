require "rails_helper.rb"

RSpec.describe "Book Index", type: :feature do
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

    it "will show book1" do

      visit books_path

      within "#book-id-#{@book1.id}" do
        expect(page).to have_content("Title: The Great Gatsby")
        expect(page).to have_content("Pages: 148")
        expect(page).to have_content("Publication Year: 1925")
        expect(page).to have_content("Author(s): #{@author1.name}")
      end

    end

    it "will show book2" do

      visit books_path

      within "#book-id-#{@book2.id}" do
        expect(page).to have_content(@book2.title)
        expect(page).to have_content(@book2.number_of_pages)
        expect(page).to have_content(@book2.publication_year)
        expect(page).to have_content("Author(s): #{@author2.name}")
      end

    end

    it "will show book3" do

      visit books_path

      within "#book-id-#{@book3.id}" do
        expect(page).to have_content(@book3.title)
        expect(page).to have_content(@book3.number_of_pages)
        expect(page).to have_content(@book3.publication_year)
        expect(page).to have_content("Author(s): #{@author2.name}")
      end

    end

    it "will show book4" do

      visit books_path

      within "#book-id-#{@book4.id}" do
        expect(page).to have_content(@book4.title)
        expect(page).to have_content(@book4.number_of_pages)
        expect(page).to have_content(@book4.publication_year)
        expect(page).to have_content("Author(s): #{@author3.name}")
      end

    end

end
