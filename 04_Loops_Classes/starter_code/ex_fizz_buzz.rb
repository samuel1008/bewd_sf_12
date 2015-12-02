# method to check for equality
def assert_equal(expected, actual)
  raise "Expected #{expected} to match #{actual}" unless expected == actual
end

# Write a program that prints the numbers from 1 to 100. 
1.upto(100) do |i|
	puts "#{{i}}"
end
# But for multiples of three print “Fizz” instead of the number and for the multiples of five print “Buzz”. 
1.upto(100) do |i|
	if i *= 3
	puts "Fizz"
elsif i *= 5 
	puts "Buzz"
else puts "#{i}"
end
# For numbers which are multiples of both three and five print “FizzBuzz”.

# Your code here, this is the incorrect code
def fizzbuzz (number)
	result = ""
	if n % 3 == 0
		result += "Fizz"
	end
	if n % 5 == 0
		result += "Buzz"
	end
	if results != ""
	
end
# we put "puts" but it was incorrect.

		

# Tests -- these are methods 
assert_equal fizzbuzz(1), 1
assert_equal fizzbuzz(3), "Fizz"
assert_equal fizzbuzz(4), 4
assert_equal fizzbuzz(50), "Buzz"
assert_equal fizzbuzz(15), "FizzBuzz"
assert_equal fizzbuzz(5175), "FizzBuzz"

# we already have a loop written for us
# uncomment this code when your tests pass
#1.upto(100) do |number|
#  puts fizzbuzz(number)
#end

#what we want to do is create a method that'll check the fizzbuzz