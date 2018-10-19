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

  def self.find_by_name(full_name)
    @@all.find do |customer|
      customer.full_name == full_name
    end
  end

  def self.find_all_by_first_name(name)
    @@all.select do |customer|
      customer.first_name == name
    end
  end

  def self.all_names
    @@all.map do |customer|
      customer.full_name
    end
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  def num_reviews
    array = Review.all.select do |review|
      review.customer == self
    end
    array.length
  end

  def restaurants
    array = Review.all.select do |review|
      review.customer == self
    end
    another_array = array.map do |review|
      review.restaurant
    end
    another_array.uniq
  end

end
