class Review

    @@all = []

    attr_accessor :customer, :restaurant

    def initialize(customer, restaurant)
        @customer = customer
        @restaurant = restaurant
        @@all << self
    end

    def self.all
        @@all
    end

    def customer
        Customer.all.select do |customer|
            customer.review == self
        end
    end

    def restaurant
        Restaurant.all.select do |restaurant|
            restaurant.review == self
        end
    end

    def self.rating
        highest_rating = 0
        best_rating = nil

        self.all.each do|review|
            if review.rating > highest_rating
                highest_rating = review.rating
            end
        end
        rating
    end


    def content
        "#{review_content}"
    end


  
end

