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