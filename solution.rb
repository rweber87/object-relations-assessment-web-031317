# Please copy/paste all three classes into this file to submit your solution!
class Customer
  attr_accessor :first_name, :last_name, :restaurant, :review

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

  def self.find_by_name(full_name)
  	@@all.find {|cust| cust.full_name == full_name}
  end

  def self.find_all_by_first_name(name)
  	@@all.reject {|cust| cust.first_name != name}
  end

  def self.all_names
  	@@all.collect {|cust| cust.full_name}
  end

  def add_review(restaurant, content)
  	self.restaurant = restaurant
  	self.restaurant.review = content
  end


end

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
