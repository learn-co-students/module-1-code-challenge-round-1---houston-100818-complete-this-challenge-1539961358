require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



customer = Customer.new("Susan", "King")
customer2 = Customer.new("Mary", "Joseph")
customer3 = Customer.new("Mary", "Joseph")

restaurant = Restaurant.new('foody')
restaurant2 = Restaurant.new('foodplace')
restaurant3 = Restaurant.new('eatup')

review = Review.new(customer2, restaurant)
review2 = Review.new(customer, restaurant3)
review3 = Review.new(customer3, restaurant2)


#add_review = add_review.new(customer2, restaurant1,"lame", 5)





binding.pry
0 