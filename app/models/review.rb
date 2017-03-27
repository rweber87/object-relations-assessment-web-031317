class Review

	@@all = []

	attr_reader :customer, :restaurant

  def self.all
  	@@all
  end

  # def customer
  # 	self.customer
  # end

  # def restaurant
  # 	self.restaurant
  # end

end


# Review.all
# returns all of the reviews
# Review#customer
# returns the customer for that given review
# Review#restaurant
# returns the restaurant for that given review
