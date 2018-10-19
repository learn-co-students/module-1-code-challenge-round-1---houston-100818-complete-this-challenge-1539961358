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

  def self.find_by_name(name)
    @@all.find do |restaurant|
      restaurant.name == name
    end
  end

  def customers
    array = Review.all.select do |review|
      review.restaurant == self
    end
    another_one = array.map do |review|
      review.customer
    end
    another_one.uniq
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def average_star_rating
    array = self.reviews.map do |review|
      review.rating
    end
    array.inject(0.0) { |sum, el| sum + el } / array.size
  end

  def longest_review
    the_longest_count = 0
    the_review = nil

    self.reviews.map do |review|
      if review.content.length > the_longest_count
        the_longest_count = review.content.length
        the_review = review
      end
    end
    the_review.content
  end

end
