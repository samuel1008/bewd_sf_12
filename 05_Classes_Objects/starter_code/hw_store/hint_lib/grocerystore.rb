# #use this file to define a class that will represent a grocery store 

# class GroceryStore
# 	attr_accessor :name, :inventory

# 	def initialize (name)
# 		@name = name
# 		@inventory = {}
# 	end

# 	def stock_item (item_name, price, quantity)
# 		#item_name is the key, price and quantity is the value, now we can input different items into the key
# 		@inventory[item_name] = {price: price, quantity: quantity}
# 		# item_name = { 'banana' => {price: 1, quantity: 5}, 'oatmeal' => {price: 2, quantity: 10}, 'chocolate' => {price: 1.50 , quantity: 2} }
# 		#add an item with a certain price to the inventory hash
# 		#inventory stores: item name as the key and a hash of price and quantity as the value 
# 		#Ex inventory = { 'banana' => {price: 1, quantity: 5},
# 		# 				'oatmeal' => {price: 2, quantity: 10} }
# 	end

# 	def view_item (item_name)
# 		puts "#{self.name} has #{inventory[item_name][:quantity]} #{item_name} for #{inventory[item_name][:price]} dollar each"
# 		puts "#{item_name}"
# 		@inventory[item_name].each do |k, v|
# 			puts "#{k} is #{v}"
# 		end
# 		#puts the information the inventory has about the item (price and quantity)
# 	end

# 	def decrease_item (item_name, num) #banana, 2 // the orange letters must be used inside the method
# 		#search through this inventory hash to find bananas
# 		new_inventory = @inventory["{item_name}"][:quantity] - num
# 		@inventory["item_name"][:quantity] = new_inventory
# 		binding.pry
# 		#this method will take decrease_item on customers line 21, and it'll take quantity from line customer.21
# 		#this happens when a customer adds an item to their cart, 
# 		#the store now has some number less of the item!
# 		#example: if num = 2, the customer bought 2 items
# 		# update the quantity in the inventory

# 		#if you do the bonus, you should return the number of items the customer could buy
# 		#that would be either the num or the amount the store had
# 	end

	
# end

require 'pry'

class GroceryStore
	attr_accessor :name, :inventory

	def initialize (name)
		@name = name
		@inventory = {}
	end

	def stock_item (item_name, price, quantity)
		#add an item with a certain price to the inventory hash
		#inventory stores: item name as the key and a hash of price and quantity as the value 
		#Ex inventory = { 'banana' => {price: 1, quantity: 5},
		# 				'oatmeal' => {price: 2, quantity: 10} }

		@inventory[item_name] = {price: price, quantity:quantity}
	end

	def view_item (item_name)
		#puts the information the inventory has about the item (price and quantity)
		item = @inventory[item_name]
		puts "#{@name} has #{item[:quantity]} #{item_name} for #{item[:price]} dollar each." 
	end

	def decrease_item (item_name, num)
		# update the quantity in the inventory
		@inventory[item_name][:quantity] -= num

		#returns the number of items the customer can have
		return num
	end

=begin
BONUS version that makes sure you can't buy more items than the store has
	def decrease_item (item_name, num)
		available_items = store[item][quantity:]
		#this represents the number of items the customer can have
		#either the number they wanted or the number available in the store
		items_bought = num 
		if available_items < num
			items_bought = available_items
			#the store doesn't have enough of the item!
			puts "#{store[:name]} does now have enough of #{item}."
		end
		# update the quantity in the inventory
		@inventory[item_name][:quantity] -= items_bought
		#returns the number of items the customer can have
		return items_bought
	end
=end
	
end