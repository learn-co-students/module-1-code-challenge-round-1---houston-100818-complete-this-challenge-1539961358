class Customer
  attr_accessor :first_name, :last_name

  @@all = []
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    self.class.all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def restaurants
    r = Review.all.select{|rev| rev.customer == self}
    r.map {|s| s.restaurant}
  end

  def add_review(restaurant, rating, content = "meh")
    Review.new(self, restaurant, rating, content)
  end

  def num_reviews
    Review.all.select{|rev| rev.customer == self}.count
  end

  def self.find_by_first_name(first_name)
    self.all.select {|x| x.first_name == first_name}
  end

  def self.find_by_name(full_name)
    customer = full_name.split(" ")
    self.all.find{|i| i.first_name == customer[0] && i.last_name == customer[1]}
  end

  def self.all_names
    self.all.map{|i| i.full_name}
  end
end
