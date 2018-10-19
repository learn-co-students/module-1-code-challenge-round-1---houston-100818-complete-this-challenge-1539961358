class Restaurant
  attr_accessor :name

  @@all = []
  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def reviews
    r = Review.all.select {|review| review.restaurant == self}
  end

  def customers
    self.reviews.map {|c| c.customer}
  end

  def average_star_rating
    a= self.reviews.map {|review| review.rating}
    sum = 0
    a.each { |i| sum += i}
    sum / a.count
  end

  def longest_review
    b= self.reviews.map {|rev| rev.content}
    b.max_by(&:length)
  end

  def self.find_by_name(name)
    self.all.find{|i| i.name == name}
  end

end
