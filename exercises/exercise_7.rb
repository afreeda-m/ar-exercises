require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
print "Enter the store name: "
store_name = gets.chomp

new_store = Store.new(name: store_name)

if new_store.save
  puts "Store created successfully!"
else
  puts "Failed to create the store. Errors:"
  new_store.errors.full_messages.each do |message|
    puts message
  end
end