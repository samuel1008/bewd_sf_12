

#an example of an incorrect scope!
#def put_var_error()
#	puts "invisible variable is: #{{invisible_var}}"
#end

#binding.pry



#an example of scope in a loop
def scope_loop
	1.upto(5) do |i|
		puts "the variable is #{i}"
	end
end	