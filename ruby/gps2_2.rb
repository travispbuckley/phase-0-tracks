# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # create a hash with the items & quantities
  # use a method to split parameters into individual pieces
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

# Method to add an item to a list
# input: item name and optional quantity
# steps: create method that takes the hash, the item, and the quantity
# 
# output: updated hash with the new item.

# Method to remove an item from the list
# input: reference hash takes a parameter and removes it from the hash
# steps:
# output: updated hash with the item removed.

# Method to update the quantity of an item
# input: reference hash, select an item, and quantity to update.
# steps:
# output: Updated hash with update data.

# Method to print a list and make it look pretty
# input: hash
# steps: iterate through hash to print the stored values.
# output: print to screen.

grocery_list = {}


def create_item(food, list)
  array_of_food = food.split(' ')
  array_of_food.each { |food| list [food] = 0 } 
  hash
end

create_item('bread milk meat', grocery_list)
p grocery_list

def add(food, quantity, list)
  list [food] = quantity.to_i
  list
end

add('chicken', 5, grocery_list)
p grocery_list

def remove(food, list)
  list.delete(food)
  list
end

remove('chicken', grocery_list)
p grocery_list

def update(food, quantity, list)
  list [food] = quantity
  list
end

update('bread', 2, grocery_list)
p grocery_list

def print_hash(list)
  list.each { |key, value| puts "Make sure you get #{value} of #{key}."}
end

print_hash(grocery_list)

#Pseudocoding can help a pair right off the bat by just getting each other on 
#the same page. So instead of going into the hard part of actual code, we establish
#basically some ground rules that we are going to follow and use together.

#Using an array would be easiest but then we can't assign values to them. So 
# we have to use a hash. The struggle was getting a hash started that could be used 
# in all our other methods.

#A method returns whatever you want it to. It will return an object that you 
# specify the value of with your method call. You can have it do something, 
# ask something until condition is met, etc.

# You can pass in strings, intergers, booleans, and hashes, just to name a few.

# You can use a global variable inside the methods to pass around info, but it
# is dangerous because that variable can be changed at any point and its gone once 
# it's changed, you can't resort back. In this release, we set an empty array
# outside of our methods, and passed it information using our methods below by
# using our array when calling the methods.

#I think using variables like this is confusing in general, because so much has to be set
# up for it to be used correctly. The data is hard to track in my opinion. 
# Its much easier to use a class and a set of instance variables because
# you can track them and use them in any method in your class. 