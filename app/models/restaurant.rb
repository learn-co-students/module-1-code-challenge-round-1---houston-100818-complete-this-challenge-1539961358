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
    Review.all.select do |review|
      review.restaurant == self
    end
  end
  
  def customers
    rest_reviews = Review.all.select do |review|
      review.restaurant == self
    end
    rest_reviews.collect do |review|
      review.customer
    end
  end

  def self.find_by_name(name)
    self.all.find do |names|
      "#{names.name}" == name
    end
  end

  def average_star_rating
    tot = 0.0
    count = 0
    self.reviews.each do |review|
      tot += review.rating
      count +=1
    end
    tot/count
  end

  def longest_review
    longest = 0
    longest_content = nil
    self.reviews.each do |review|
      if review.content.length > longest
        longest = review.content.length
        longest_content = review.content
      end
    end
    longest_content
  end

end
