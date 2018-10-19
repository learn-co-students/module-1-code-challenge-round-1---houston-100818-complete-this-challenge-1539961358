class Customer
  attr_accessor :first_name, :last_name
  @@all = []

  def self.all
    @@all
  end


  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
end

  def full_name
    "#{first_name} #{last_name}"
  end

  def reviews
    Review.all.select do | review |
      review.customer == self
    end
  end

  def restaurants # unique list of restaurants reviewed
    self.reviews.map do | review |
      review.restaurant
    end.uniq
  end

  def self.find_by_name(fullname)
    split_name = fullname.split(" ")
    self.all.find do | customer |
      this_name = [customer.first_name, customer.last_name]
      this_name == split_name
    end
  end

  def self.find_all_by_first_name(firstname)
    self.all.select do | customer |
      customer.first_name == firstname
    end
  end

  def self.all_names
    self.all.map do | customer |
      "#{customer.first_name} #{customer.last_name}"
    end
  end

  def add_review(restaurant,  content, rating)
    Review.new(self, restaurant, content, rating)
  end

  def num_reviews
    self.reviews.length
  end 
  
end
