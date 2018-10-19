class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def restaurants
    cust_reviews = Review.all.select do |review|
      review.customer == self
    end
    cust_reviews.collect do |review|
      review.restaurant
    end
  end

  def add_review(restaurant, rating, content)
    Review.new(self, restaurant, rating, content)
  end

  def self.find_by_name(name)
    self.all.find do |names|
      "#{names.first_name} #{names.last_name}" == name
    end
  end

  def self.find_all_by_first_name(name)
    self.all.select do |names|
      "#{names.first_name}" == name
    end
  end

  def self.all_names
    self.all.collect do |names|
      "#{names.first_name} #{names.last_name}"
    end
  end

  def num_reviews
    cust_reviews = Review.all.select do |review|
      review.customer == self
    end
    cust_reviews.length
  end

end
