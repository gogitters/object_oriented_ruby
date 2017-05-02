class Employee
  attr_reader :first_name, :last_name, :salary
  # attr_writer :active
  attr_accessor :active

  def initialize(input_hash)
    @first_name = input_hash[:first_name]
    @last_name = input_hash[:last_name]
    @salary = input_hash[:salary]
    @active = input_hash[:active]
  end

  def print_info
    puts "#{@first_name} #{@last_name} makes $#{@salary} a year."
  end

  def give_annual_raise
    @salary = @salary * 1.05
  end

end

employee1 = Employee.new({active: true, last_name: "Morco", salary: 1000000, first_name: "Sami"})
employee2 = Employee.new(first_name: "Andy", last_name: "Zhao", salary: 100000, active: true)
employee1.print_info
employee2.print_info
employee2.give_annual_raise
employee2.print_info
employee1.give_annual_raise
employee1.print_info
# p employee1
puts employee1.first_name
puts employee1.last_name
employee2.active = false
p employee2