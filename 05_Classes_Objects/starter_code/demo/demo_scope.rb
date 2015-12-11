

<<<<<<< HEAD
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
=======
invisible_var = 2

#an example of an incorrect scope!
def put_var_error
end

puts "Try to use the put_var_error method:"
put_var_error()

#an example of correct scope with an argument
def put_var_arg
end

puts "Try to use the put_var_arg method:"
put_var_arg(invisible_var)

#an example of correct scope, defining a variable inside a function
def put_var_scope
end

#an example of scope in a loop
def scope_loop
>>>>>>> d4d0371fc1b632c18c9608947c605083f5b631bb
end	