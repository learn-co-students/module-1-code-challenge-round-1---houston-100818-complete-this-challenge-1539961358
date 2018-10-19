class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def find_by_name(name)
    Customer.all.find do |name|
      name == Customer.full_name
    end
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  def restaurants
    myreview = Review.all.select do |review|
      review.customer == self
    end

    myrestaurant = myreview.map do |review|
      review.restaurant
    end

    myrestaurant

  end


end
