class Restaurant

	attr_reader :review
  attr_accessor :name, :customer

  @@all = []

  def self.all
  	@@all		
	end


  def initialize(name)
    @name = name
    @@all << self
  end

  def self.find_by_name(name)
  	@@all.find {|rest| rest.name == name}
  end

  def reviews
  	self.collect {|rest| rest.review}
  end

  def customers
  	self.review.customer
  end


end


# Restaurant.all
# returns an array of all restaurants
# Restaurant.find_by_name(name)
# given a string of restaurant name, returns the first restaurant that matches
# Restaurant#reviews
# returns an array of all reviews for that restaurant
# Restaurant#customers
# should return all of the customers who have written reviews of that restaurant.