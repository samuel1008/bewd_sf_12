
require_relative 'employee'

# A manager is contactable by email,
# and wants their title as part of their name display
class Manager < Employee
	#managers have titles and emails
	attr_accessor :title, :email
	#make sure a Manager's full name includes their title
	def initialize(title, email)
		@title = title
		@email = email
		super(first_name, last_name)
	
	end

	def full_name()
		super() + "#{@title}"
	end

	#managers like to be contacted via email
	def contact()
		"#{@email}"

	end
end
