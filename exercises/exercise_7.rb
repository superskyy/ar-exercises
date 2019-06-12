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
class Store < ActiveRecord::Base
	has_many :employees
	def mens_or_womens_apparel
    if mens_apparel.blank? || womens_apparel.blank?
      errors.add("error")
    end
  end
end

class Employee < ActiveRecord::Base
	belongs_to :store
	validates_presence_of :first_name, :last_name, :store_id, :hourly_rate => {:in => [40,200], :only_integer => true}, :annual_revenue => {in: [0], :only_integer => true}
	validates :first_name, length: {minimum: 3}
end

@user = @store2.employees.create(first_name: "Yelly", last_name: "Randi", hourly_rate: 50)
puts @user.valid?

@store7 = Store.create(name: "Calgary")
puts @store7




