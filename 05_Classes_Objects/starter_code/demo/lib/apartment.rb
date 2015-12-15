require 'pry'

class Apartment
	attr_accessor :unit, :sqft, :num_bedrooms, :num_bathrooms, :rent, :renters

<<<<<<< HEAD
	def initialize (unit, sqft, num_bedrooms, num_bathrooms)
		@unit = unit
		@sqft = sqft
		@num_bedrooms = num_bedrooms
		@num_bathrooms = num_bathrooms
=======
	def initialize (unit, sqft, bed, bath)
		@unit = unit
		@sqft = sqft
		@num_bedrooms = bed
		@num_bathrooms = bath
>>>>>>> d4d0371fc1b632c18c9608947c605083f5b631bb
		@rent = 0
		@renters = []
	end

	def to_s
<<<<<<< HEAD
		"Apartment: unit: #{@unit} has #{@sqft} sqft, #{num_bathrooms}, #{num_bedrooms}"
	end

	def is_occupied?()
		#will check if the renters is a open array
		#can also use @renters.any
=======
		"Apartment: unit: #{@unit} has #{@sqft} sqft, #{num_bedrooms} bedrooms and #{@num_bathrooms} bathrooms."
	end

	def is_occupied?()
>>>>>>> d4d0371fc1b632c18c9608947c605083f5b631bb
		@renters != []
	end

	def rent_out (price, tenant)
<<<<<<< HEAD
		@rent = price
		add_renter(tenant)
		puts "#{@unit} has been rented out to #{tenant} for #{@rent}."
=======
		@rent = price 
		add_renter(tenant)
		puts "#{@unit} has been rented out to #{tenant} for $#{@rent}."
>>>>>>> d4d0371fc1b632c18c9608947c605083f5b631bb
	end

	def add_renter(tenant)
		@renters.push(tenant)
	end
<<<<<<< HEAD
end
=======

end
>>>>>>> d4d0371fc1b632c18c9608947c605083f5b631bb
