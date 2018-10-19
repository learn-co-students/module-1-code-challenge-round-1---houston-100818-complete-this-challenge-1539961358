class Review
  attr_accessor :rating, :content
  attr_reader :customer, :restaurant
  @@all = []

  def initialize(customer:, restaurant:, rating:, content:)
    @customer = customer
    @restaurant = restaurant
    self.rating = rating
    self.content = content
    @@all << self
  end

  def self.all
    # returns all of the reviews
    @@all
  end
end
