class Restaurant
  attr_accessor :name
  @@all =[]
    
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all 
    @@all
  end 

  def self.find_by_name(name)
    self.all.find do |instance_restaurant|
      instance_restaurant.name == name 
    end 
  end 

  def reviews
    Review.all.select {|instance_review| instance_review.restaurant == self}
  end 

  def customers
    self.reviews.collect {|my_review| my_review.customer}.uniq
  end 

  def average_star_rating
    total = 0
    self.reviews.each do |my_review|
      total += my_review.rating
    end
    
    total.to_f/self.reviews.length
  end 

  def longest_review
   longest = self.reviews.sort_by {|my_review| my_review.content.length}
   longest[-1]
  end 

end
 