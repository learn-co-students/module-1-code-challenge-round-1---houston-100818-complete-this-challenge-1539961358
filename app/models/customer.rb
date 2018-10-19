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
  
  def self.find_by_name(full_name)
    self.all.find do |instance_customer|
      instance_customer.full_name == full_name
    end 
  end

  def self.find_all_by_first_name(first_name)
    self.all.select do |instance_customer|
      instance_customer.first_name == first_name
    end 
  end 

  def self.all_names 
    self.all.collect do |instance_customer|
      instance_customer.full_name
    end 
  end 

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, rating, content)
  end 

  def reviews
    Review.all.select {|instance_review| instance_review.customer == self}
  end 

  def num_reviews
    self.reviews.count
  end 

  def restaurants
    my_restaurants = self.reviews.collect do |my_review| 
      my_review.restaurant
    end
    my_restaurants.uniq
  end
end
 