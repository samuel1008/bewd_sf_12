#Apartment class.

class Apartment
	attr_accessor :unit, :rent, :sqft, :num_bedrooms, :num_bathrooms, :renters

	def initialize (unit, rent, sqft, num_bedrooms, num_bathrooms)
		@unit = unit
		@rent = rent
		@sqft = sqft
		@num_bedrooms = num_bedrooms
		@num_bathrooms = num_bathrooms
		@renters = []
	end

	def is_occupied?()
		@renters != []
	end

	def apply_renter?(renter)
		renter.credit > 600 && renter.budget >= @rent
	
	end

	def add_renter(tenant)
		@renters.push(tenant)
	end

	def show_renters()
		puts "Unit #{@unit} has these renters: [#{@renters.join(", ")}]"
	end

end