
class Polygon
	attr_accessor :len_sides

	def initialize(len_sides)
		 @len_sides = len_sides #array storing the length of each side
	end

	def num_sides()
		@len_sides.length()
	end

	def is_regular()
		#check if all sides are the same length
		@len_sides.uniq().length == 1
		#this will check if all the sides are the same
		

		
	end

	def to_s()
		"This is a #{self.class} with #{num_sides()} sides."
	end
end

#this tells us that all rectangles are a type of polygon
class Rectangle < Polygon
	attr_accessor :l, :w
#we need to change how we make a rectangle, so we're going to use the initialize method
	def initialize (length, width)
		@l = length
		@w = width
		super([length, width, length, width])
		#call the parent class' initial method // it's like call the polygon's initialize
		#we cant use len_sides because the variable of len_side isn't defined in rectangle, in this scope it's nothing
		#super = @len_sides = [length, width, length, width]
	end
	#this will override the Polygon initialize and use lenth,width instead of @len.sides
	def area()
		@l * @w
	end

	def to_s ()
		super() + "I have area #{self.area()}"
		#self refers to the rectangle // we can just use area, she just wanted to show another use for self
	end

end
 #key takeaway, the subclass can overrides the parent class. We just need to start a new initial
 # the use of super


#most confusing is when to use the .uniq and when to use the super
class Square < Rectangle
	
end
