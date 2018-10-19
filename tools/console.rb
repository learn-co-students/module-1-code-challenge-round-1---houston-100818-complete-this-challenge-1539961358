require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
mcdonalds = Restaurant.new("McDonalds")
tacobell = Restaurant.new("TacoBell")
wendys = Restaurant.new("Wendy's")

barbara = Customer.new("Barbara", "Decares")
bob1 = Customer.new("Bob", "one")
bob2 = Customer.new("Bob", "two")

review1 = Review.new(barbara, mcdonalds, 0, "blablabla :(")
review2 = Review.new(barbara, tacobell, 5, "blablabla <3")
review3 = Review.new(barbara, wendys, 2, "blablabla")

review4 = Review.new(bob1, mcdonalds, 4, "bladhuashdias")
review5 = Review.new(bob2, wendys, 0, "aaaaaasgduisguidasudhuaisduiasduiashduihasiudhuisahduisahduihasdhuasiua")
bob1.add_review(tacobell, "lalalalal", 5)
bob1.add_review(tacobell, "lolololo", 4)
barbara.num_reviews
mcdonalds.customers
mcdonalds.average_star_rating
wendys.longest_review

binding.pry
0 #leave this here to ensure binding.pry isn't the last line