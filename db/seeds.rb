# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


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
