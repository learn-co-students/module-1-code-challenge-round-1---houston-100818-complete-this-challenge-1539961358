require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

hannah = Customer.new("Hannah", "Chang")
customer2 = Customer.new("We", "Work")
hannah2 = Customer.new("Hannah", "Banana")

babbo = Restaurant.new("Babbo")
hanjan = Restaurant.new("Hanjan")

hannah.add_review(babbo, "yummy pasta", 5)
hannah.add_review(babbo, "first time was great, second time awful", 4)
hannah.add_review(hanjan, "my new fav place so i am writing a very long review yay!", 5)
customer2.add_review(hanjan, "love this place", 5)
customer2.add_review(hanjan, "hate this place", 1)

a_review = Review.new(hannah2, babbo, "this is a test", 4)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line