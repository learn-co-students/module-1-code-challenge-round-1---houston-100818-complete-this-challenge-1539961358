class Review
  attr_accessor :customer, :restaurant, :rating, :content

  @@all = []

  def initialize(customer, restaurant, rating, content)
    self.customer = customer
    self.restaurant = restaurant
    self.rating = rating
    self.content = content
    @@all << self
  end 

  def self.all
    @@all
  end 

end

 