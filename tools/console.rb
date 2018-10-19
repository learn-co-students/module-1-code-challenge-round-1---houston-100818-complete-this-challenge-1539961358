require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

rest1 = Restaurant.new("rest 1")
rest2 = Restaurant.new("rest 2")

cust1 = Customer.new("cust", "1")
cust2 = Customer.new("customer", "2")
cust2 = Customer.new("cust", "2")

#customer, restaurant, rating, content
review1 = Review.new(cust1, rest1, 5, "whatevs")
review2 = Review.new(cust1, rest2, 2, "ewwwww grosssss")
review3 = Review.new(cust2, rest1, 6, "like totallllllllly")
review3 = Review.new(cust2, rest2, 8, "waaaaaaaaaaaaaaaaahhw")


cust1.add_review(rest1, 67, "ooooooo mmmmmmm gggggggg")
rest1_custs = rest1.customers
cust1_restaurants = cust1.restaurants
find_cust1 = Customer.find_by_name("cust 1")
find_cust1_cust2 = Customer.find_all_by_first_name("cust")
find_rest1 = Restaurant.find_by_name("rest 1")
cust1_num_rev = cust1.num_reviews
rest2_avg_rating = rest2.average_star_rating
rest1_longest = rest1.longest_review





binding.pry
0 #leave this here to ensure binding.pry isn't the last line