require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

altuve = Customer.new("Jose", "Altuve")
marwin = Customer.new("Marwin", "Gonzalez")
verlander = Customer.new("Justin", "Verlander")
lima = Customer.new("Jose", "Lima")

coppa = Restaurant.new("Coppa Osteria")
brennans = Restaurant.new("Brennans")
mala = Restaurant.new("Mala Sichuan Bistro")
blt = Restaurant.new("Better Luck Tomorrow")

altuve_coppa1 = altuve.add_review(restaurant: coppa, rating: 4, content: "Excellent wine list!")
marwin_brennans = marwin.add_review(restaurant: brennans, rating: 5, content: "¡Voy a regresar pronto por la sopa de torguga!")
verlander_mala = verlander.add_review(restaurant: mala, rating: 4, content: "Best Sichuan food in town!")
verlander_coppa1 = verlander.add_review(restaurant: coppa, rating: 3, content: "Great food, but subpar service.")
verlander_coppa2 = verlander.add_review(restaurant: coppa, rating: 5, content: "Service was much improved this time!")
altuve_coppa2 = altuve.add_review(restaurant: coppa, rating: 5, content: "Get the bolognese!")


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
