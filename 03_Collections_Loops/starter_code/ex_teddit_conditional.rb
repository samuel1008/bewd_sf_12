# Teddit Contionals - Starter Code.

# Let's add a new Teddit feature. Upvotes!
# Complete the application below. 
# Where you see comments (lines that begin with #) replace it with code so that the program works.

def get_input
  #Get input from the user.
  gets.chomp
end

def calculate_upvotes(story, category)
	upvotes = 1
	# Write code so that:
		# If the Story has the word 'cat' multiply the upvotes by 5
		if story.downcase.include? ("cat")
			upvotes *= 5
		end
		# If the Story has the word 'bacon' multiply the upvotes by 8
		if story.downcase.include? ("bacon")
			upvotes *= 8
		end
		# NOTE: look at the ruby docs to see how to check if a string has another string in it!
		# (google something like "ruby string contains substring")
		# NOTE: capitalization isn't important so consider using the "downcase" method (google it!)
		# If the Story's category is 'food' it gets 3 times the upvotes.
		if category.downcase == 'food'

	#For example:
	# "Cats frolic despite tuna shortage" should give you 5 times the upvotes!
end

puts "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!"
puts "Please enter a News story:"
story = get_input
puts "Please give it a category:"
category = get_input
story[:upvotes] = calculate_upvotes(story[:title], category[:title])
puts "New story added! #{story}, Category: #{category.capitalize}, Current Upvotes: #{upvotes}"