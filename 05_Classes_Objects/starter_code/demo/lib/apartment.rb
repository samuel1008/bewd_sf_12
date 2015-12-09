require 'pry'

class Apartment
	attr_accessor :unit, :sqft, :num_bedrooms, :num_bathrooms, :rent, :renters

	def initialize (unit, sqft, num_bedrooms, num_bathrooms)
		@unit = unit
		@sqft = sqft
		@num_bedrooms = num_bedrooms
		@num_bathrooms = num_bathrooms
		@rent = 0
		@renters = []
	end

	def to_s
		"Apartment: unit: #{@unit} has #{@sqft} sqft, #{num_bathrooms}, #{num_bedrooms}"
	end

	def is_occupied?()
		#will check if the renters is a open array
		#can also use @renters.any
		@renters != []
	end

	def rent_out (price, tenant)
		@rent = price
		add_renter(tenant)
		puts "#{@unit} has been rented out to #{tenant} for #{@rent}."
	end

	def add_renter(tenant)
		@renters.push(tenant)
	end
end