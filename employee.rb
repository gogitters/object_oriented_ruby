require "faker"

class Employee
  attr_reader :first_name, :last_name, :salary
  # attr_writer :active
  attr_accessor :active

  def initialize(input_hash)
    @first_name = input_hash[:first_name] ||= "Peter"
    @last_name = input_hash[:last_name] ||= "Pan"
    @salary = input_hash[:salary] ||= 1
    @active = input_hash[:active] ||= false
  end

  def full_name
    if @last_name[-1] == "s"
      "#{@first_name} #{@last_name}, Esquire"
    else
      "#{@first_name} #{@last_name}"
    end
  end

  def print_info
    puts "#{@first_name} #{@last_name} makes $#{@salary} a year."
  end

  def give_annual_raise
    @salary = @salary * 1.05
  end


end

employee1 = Employee.new({active: true, last_name: "Morco", salary: 1000000})
employee2 = Employee.new(first_name: "Andy", salary: 100000, active: true)

employees = []
100.times do
  employees << Employee.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, salary: Faker::Number.number(5), active: true )
end

employees.each do |employee|
  puts employee.full_name
end
# employee1.print_info
# employee2.print_info
# employee2.give_annual_raise
# employee2.print_info
# employee1.give_annual_raise
# employee1.print_info
# # p employee1
# puts employee1.first_name
# puts employee1.last_name
# employee2.active = false
# p employee2
p employee1.full_name
p employee2.full_name