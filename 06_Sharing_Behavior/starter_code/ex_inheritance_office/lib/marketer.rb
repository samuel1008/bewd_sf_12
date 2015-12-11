
require_relative 'employee'

class Marketer < Employee
	attr_accessor :email

	def initialize(email)
		@email = mail
		super(first_name, last_name)
	end

	def contact()
		"#{@email}"
	end
end

