class Restaurant
  attr_accessor :name
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.find_by_name(name)
    self.all.find do | restaurant |
      restaurant.name == name
    end
  end

  def reviews
    Review.all.select do | review |
      review.restaurant == self
    end
  end

  def customers # unique list customers
    self.reviews.map do | review |
      review.customer
    end.uniq
  end

  def average_star_rating
    rating_sum = 0.0
    self.reviews.each do | review |
      rating_sum += review.rating
    end
    rating_sum / self.reviews.length
  end

  def longest_review
    sorted_array = self.reviews.sort_by do | review |
      review.content.length
    end.reverse
    sorted_array[0]
  end

end
