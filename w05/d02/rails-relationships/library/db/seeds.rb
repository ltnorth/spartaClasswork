# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

author1 = Author.create(name: "J. K. Rowling", net_worth: 65e7, dob: "1965-7-31")
author2 = Author.create(name: "Ian Fleming", net_worth: 1e8, dob: "1908-5-28")

book1 = Book.create(title: "Harry Potter and the Philosopher's Stone", blurb: "Harry Potter goes to school and does magic n stuff.", genre: "Fantasy")
book2 = Book.create(title: "Harry Potter and the Chamber of Secrets", blurb: "Harry Potter speaks to snakes and goes down into a chamber to save a girl.", genre: "Fantasy")

book3 = Book.create(title: "Casino Royale", blurb: "James Bond goes to a casino to gamble and stuff.", genre: "Spy fiction")
book4 = Book.create(title: "Moonraker", blurb: "James Bond goes to the moon or something.", genre: "Spy fiction")
book5 = Book.create(title: "Skyfall", blurb: "James Bond plays tower defense.", genre: "Spy fiction")

author1.books.push(book1)
author1.books.push(book2)

author2.books.push(book3)
author2.books.push(book4)
author2.books.push(book5)

author1.save
author2.save