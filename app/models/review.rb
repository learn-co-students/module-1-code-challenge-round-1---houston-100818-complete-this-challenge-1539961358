class Review
    
    attr_accessor :content, :rating
    attr_reader :customer, :restaurant

    @@all = []

    def initialize(customer,restaurant,content,rating)
        @customer = customer
        @restaurant = restaurant
        self.rating = rating
        self.content = content
        @@all << self
    end

    def self.all
        @@all
    end

    def customer
        @customer
    end

    def restaurant
        @restaurant
    end

  
end

