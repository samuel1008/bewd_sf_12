#Person Class.
class Person
	attr_accessor :name, :budget, :credit

	def initialize(name, budget, credit)
		@name = name
		@budget = budget
		@credit = credit
	end

	def to_s
		@name
	end
end
