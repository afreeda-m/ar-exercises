require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
total_revenue = Store.sum(:annual_revenue)
puts "Total revenue for the entire company: $#{total_revenue}"

average_revenue = Store.average(:annual_revenue)
puts "Average annual revenue for all stores: $#{average_revenue}"

high_revenue_stores = Store.where("annual_revenue >= ?", 1000000)
num_high_revenue_stores = high_revenue_stores.size
puts "Number of stores generating $1M or more in annual sales: #{num_high_revenue_stores}"
