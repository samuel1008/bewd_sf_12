#Demo about class vs instance variables and methods
#instance methods and variables
class Robot
	#has a type
	#can puts it type
	attr_accessor :type
	# class variable example
	@@hive_mind_activated = false
	#this is a class variable because this will control all the robots

	#attr_accessor doesn't doesn't class variable so we need to create a method
	#this is how we retrieve the value
	def get_hive_mind()
		@@hive_mind_activated
	end
	#this is how we set the value
	def set_hive_mind
		@@hive_mind_activated == bool
	end

	def initialize
		@type = type
	end

	def my_type()
		puts "My type is #{@type}"
	end

	def self.three_laws()
		puts "Don't harm humans"
		puts "Obey orders"
		puts "Protect your master"
	end

	def attack()
		if @@hive_mind_activated
			puts "Destrory!"
		else
			puts "We are peaceful robots"
		end
	end

	#new keyword: self
	#self refers to the class inside a class definition
	#self refers to an instance inside a method definition
	#self refers to the class robot in our demo


end

#Now add a class method, using Robot // we want to use a class method because we don't care about individual robots


#Demonstrate using class method
#You can't use a class method on an instance (or an instance method on a class)
# it's a variable used for that class

#Now add a class variable, hive_mind_activated
#show writing getters and setters

#Demonstrate using class variable

#write attack instance method that uses class variable




