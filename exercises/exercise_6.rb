require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

class Store
	has_many :employees
end

class Employee
	belongs_to :store
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Peter", last_name: "Syn", hourly_rate: 80)
@store2.employees.create(first_name: "LK", last_name: "Joki", hourly_rate: 20)
@store2.employees.create(first_name: "Yelly", last_name: "Randi", hourly_rate: 50)