module EmailReporter
  def send_report
    puts "Sending email..."
    # TODO: write code to actually send out a report
    puts "This is additional code!"
    puts "Email sent!"
  end

  def foobar
    puts "hello"
  end
end

module MakeCoffee
  def coffee
    puts "i am making coffee"
  end
end

class Intern < Employee
  include EmailReporte
  include MakeCoffee
end

class Employee
  attr_reader :first_name, :last_name, :salary
  attr_accessor :active

  def initialize(input_hash)
    @first_name = input_hash[:first_name] ||= "Peter"
    @last_name = input_hash[:last_name] ||= "Pan"
    @salary = input_hash[:salary] ||= 1
    @active = input_hash[:active] ||= false
  end

  def full_name
    if @last_name[-1] == "s"
      "#{@first_name} #{@last_name} the Great"
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

class Manager < Employee
  include EmailReporter

  attr_accessor :employees

  def initialize(input_hash)
    super
    @employees = input_hash[:employees]
  end

  def give_all_raises
    @employees.each do |employee|
      employee.give_annual_raise
    end
  end

  def fire_all_employees
    @employees.each do |employee|
      employee.active = false
    end
  end
end



intern = Intern.new(first_name: "April", last_name: "Ludgate", salary: 20000, active: true)
intern.print_info
intern.send_report
manager = Manager.new(first_name: "Michael", last_name: "Scotts", salary: 50000, active: true, employees: [intern])
manager.send_report
employee1 = Employee.new({active: true, last_name: "Morco", salary: 1000000})
intern.foobar
manager.foobar
intern.coffee
