class Restaurant
  attr_accessor :name
  @@all = []

  def initialize(name)
    self.name = name
    @@all << self
  end

  def self.all
    # returns an array of all restaurants
    @@all
  end

  def self.find_by_name(name)
    # given a string of restaurant name, returns the first restaurant that matches
    self.all.find do | restaurant |
      restaurant.name == name
    end
  end

  def reviews
    # returns an array of all reviews for that restaurant
    Review.all.select do | review |
      review.restaurant == self
    end
  end

  def customers
    # Returns a **unique** list of all customers who have reviewed a particular restaurant.
    customers = self.reviews.map do | review |
      review.customer
    end
    customers.uniq
  end

  def average_star_rating
    # returns the average star rating for a restaurant based on its reviews
    sum = 0.0
    self.reviews.each do | review |
      sum += review.rating
    end
    sum / self.reviews.length
  end

  def longest_review
    # returns the longest review content for a given restaurant
    longest_count = 0
    longest_review = nil
    self.reviews.each do | review |
      if review.content.length > longest_count
        longest_count = review.content.length
        longest_review = review
      end
    end
    longest_review.content
  end

end
