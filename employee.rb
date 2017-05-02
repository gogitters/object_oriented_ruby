class Employee
  attr_reader :first_name, :last_name, :active, :salary
  attr_writer :active

  def initialize(input_first_name, input_last_name, input_salary, input_active)
    @first_name = input_first_name
    @last_name = input_last_name
    @salary = input_salary
    @active = input_active

    purple_hippo = "foobar"
    puts purple_hippo
  end

  def print_info
    puts "#{@first_name} #{@last_name} makes $#{@salary} a year."
  end

  def give_annual_raise
    @salary = @salary * 1.05
  end

end

employee1 = Employee.new("Sami", "Morco", 1000000, true)
employee2 = Employee.new("Andy", "Zhao", 200000, true)
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