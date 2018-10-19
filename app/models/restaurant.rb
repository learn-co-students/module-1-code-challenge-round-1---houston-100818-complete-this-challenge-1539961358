class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    restaurantreviews = Review.all.select do |review|
      review.restaurant == self
    end

    myreviews = restaurantreviews.map do |review|
      review.restaurant
    end

    myreviews

  end

  def customers
    myreviews = Review.all.select do |review|
      review.restaurant == self
    end

    mycustomer = myreviews.map do |review|
      review.customer
    end

  end
    


end
