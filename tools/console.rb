require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

tom = Customer.new("tom", "cullen")
dick = Customer.new("dick", "whitman")
dennys = Restaurant.new("dennys")
ihop = Restaurant.new("IHOP")
tom_dennys = Review.new(tom, dennys, 5)
dick_dennys = Review.new(dick, dennys, 5, "GRAND SLAM!")
dick_ihop = Review.new(dick, ihop, 3, "The Tutti Fruity was not All-Rudy")
tom.add_review(ihop, 5)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line