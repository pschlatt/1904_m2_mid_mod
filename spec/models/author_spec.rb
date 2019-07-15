require "rails_helper"

RSpec.describe Author, type: :model do
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

  describe "Validations" do
    it {should validate_presence_of (:name)}
  end

  describe "Relationships" do
    it {should have_many(:book_authors)}
    it {should have_many(:books).through(:book_authors)}
  end

  it "#average_pages" do


    expect(@author2.average_pages).to eq(465)

  end

end
