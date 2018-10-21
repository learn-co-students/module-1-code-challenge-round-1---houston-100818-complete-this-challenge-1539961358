class Review
    attr_accessor :content
    attr_reader :customer, :restaurant, :rating

    @@all = []

    def initialize(customer, restaurant, content, rating)
        @customer = customer
        @restaurant = restaurant
        @content = content
        self.rating = rating
        @@all << self
    end

    def self.all
        @@all
    end

    def rating=(value)
        if value >= 5
            @rating = 5
        elsif value <= 1
            @rating = 1
        else
            @rating = value
        end
    end
  
end

