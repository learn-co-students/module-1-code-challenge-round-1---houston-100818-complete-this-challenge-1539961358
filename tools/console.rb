require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
eddie = Customer.new('Edward', 'Childress')
megan = Customer.new('Megan', 'Farley')
hannah = Customer.new('Hannah', 'Chang')
david = Customer.new('David', 'Chang')
sinclair = Customer.new('Edward', 'Sinclair')

mcd = Restaurant.new("McDonald's")
calliopes = Restaurant.new("Calliope's")
hop = Restaurant.new('House of Pies')

eddie.add_review(hop, "The very best piesouth of I10, and no matter how late, they're still open. Don't sleep on thelemon icebox. Lost one star because the booths were buit in 1967 and are toosmall for the modern fat guy.", 4)
eddie.add_review(mcd, "What do you want? It's McDonald's. They have McDonald's food. If you want's Morton's food, go to Morton's.", 3)
megan.add_review(mcd, "It's fine.", 3)
eddie.add_review(hop, "I lost weight and now can fit in the booths. I'm in serious danger of putting it back on again because pie with breakfast is the very best thing.", 5)
hannah.add_review(calliopes, "I've never had such food! Cajuns are brilliant! Oysters are still weird, though.", 4)
hannah.add_review(hop, "I got food poisoning.", 1)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line