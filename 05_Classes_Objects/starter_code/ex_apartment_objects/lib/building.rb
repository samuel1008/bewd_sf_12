#Building Class
class Building
	attr_accessor :name, :addy, :num_apt, :apartments

	def initialize(name, address, num_apt)
		@name = name
		@address = address
		@num_apt = num_apt
		@apartments = []
	end


	def add_apartment(apartment)
		apartments << apartment
	end

	def display_apartments()
		@apartments.each do |a|
			availability = a.is_occupied?() ? "available" : "not available"
		puts "Unit #{a.unit} has #{a.sqft} sqft, #{a.num_bedrooms} bedrooms, and #{a.num_bathrooms} bathrooms is #{availability}"	
		end
	end
end
