# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Book.destroy_all 


user1 = User.create(name: 'Mike')
user2 = User.create(name: 'Bob')
user3 = User.create(name: 'Pegasus')
user4 = User.create(name: 'Mus')
user5 = User.create(name: 'Amman')
user6 = User.create(name: 'Steve')






book1 = Book.create(title: '1984', img: 'img', genre: 'dystopian fiction', author:'George Orwell' , user_id: user1.id) 
book2 = Book.create(title: 'Animal Farm', img: 'img', genre: 'political fiction', author:'George Orwell', user_id: user2.id) 
book3 = Book.create(title: 'Do andriods dream of electric sheep', img: 'img', genre: 'SciFi', author: 'Philip Dick' ,user_id: user3.id) 
book4 = Book.create(title: 'The Great Gatsby', img: 'img', genre: 'fiction', author: 'Francis Fitzgerald', user_id: user3.id) 
book5 = Book.create(title: 'Catcher in the rye', img: 'img', genre: 'fiction', author: 'J.D. Salinger', user_id: user4.id) 
book6 = Book.create(title: 'Ishamel', img: 'img', genre: 'fiction', author: 'Daniel Quinn' , user_id: user3.id) 
book7 = Book.create(title: 'Crime and Punishement', img: 'img', genre: 'fiction', author:'Fyodor Dostoevsky' , user_id: user5.id) 
book8 = Book.create(title: 'Manufacuring Consent', img: 'img', genre: 'fiction', author: 'Noam Chomsky' , user_id: user6.id) 
book9 = Book.create(title: 'Orientalisim', img: 'img', genre: 'post-colonial studies', author:'Edward Said', user_id: user6.id) 
book10 = Book.create(title: 'The Alchemist', img: 'img', genre: 'fiction', author:'Paulo Coelho' , user_id: user2.id) 


