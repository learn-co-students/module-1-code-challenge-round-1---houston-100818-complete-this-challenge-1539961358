class Customer
  attr_accessor :first_name, :last_name
  @@all = []

  def initialize(first_name, last_name)
    self.first_name = first_name
    self.last_name  = last_name
    @@all << self
  end

  def self.all
    # return **all** of the customer instances
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_by_name(full_name)
    # given a string of a **full name**, returns the **first customer** whose full name matches
    self.all.find do | customer |
      customer.full_name == full_name
    end
  end

  def reviews
    # returns an array of all reviews this customer has written
    Review.all.select do | review |
      review.customer == self
    end
  end


  def restaurants
    # Returns a **unique** array of all restaurants a customer has reviewed
    restaurants = self.reviews.map do | review |
      review.restaurant
    end
    restaurants.uniq
  end

  def add_review(restaurant:, content:, rating:)
    # given a **restaurant object**, some review content (as a string), and a star rating (as an integer), creates a new review and associates it with that customer and restaurant.
    Review.new(customer: self, restaurant: restaurant, rating: rating, content: content)
  end

  def num_reviews
    # Returns the total number of reviews that a customer has authored
    self.reviews.length
  end

  def self.all_names
    # should return an **array** of all of the customer full names
    self.all.map do | customer |
      customer.full_name
    end
  end

  def self.find_all_by_first_name(name)
    # given a string of a first name, returns an **array** containing all customers with that first name
    self.all.select do | customer |
      customer.first_name == name
    end
  end

end
