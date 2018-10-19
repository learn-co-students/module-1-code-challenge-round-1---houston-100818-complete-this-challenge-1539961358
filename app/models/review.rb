class Review
  attr_accessor :customer, :restaurant, :rating, :content

  @@all = []

  def initialize(customer, restaurant, rating, content = "meh")
    self.customer = customer 
    self.restaurant = restaurant
    if rating.between?(1,5)
      self.rating = rating 
    else 
      return "Please enter a rating from 1 to 5"
    end
    self.content = content
    self.class.all << self
  end 

  def self.all 
    @@all
  end

end

