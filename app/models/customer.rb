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


# Customer.all
# should return all of the customers
# Customer.find_by_name(name)
# given a string of a full name, returns the first customer whose full name matches
# Customer.find_all_by_first_name(name)
# given a string of a first name, returns an array containing all customers with that first name
# Customer.all_names
# should return an array of all of the customer full names
# Customer#add_review(restaurant, content)
# given some content and a restaurant, creates a new review and associates it with that customer and that restaurant



