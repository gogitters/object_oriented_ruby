# class President < Manager
#   def blah
#     puts 'hi'
#   end
# end

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
  attr_accessor :employees
  
  def initialize(input_hash)
    super
    @employees = input_hash[:employees]
  end

  def send_report
    puts "Sending email..."
    # TODO: write code to actually send out a report
    puts "Email sent!"
  end
end

employee1 = Employee.new(first_name: "Jim", last_name: "Hapley", salary: 30000, active: true)
employee2 = Employee.new(first_name: "Pam", last_name: "Hapley", salary: 35000, active: true)
manager = Manager.new(first_name: "Michael", last_name: "Scotts", salary: 50000, active: true, employees: [employee1, employee2])
manager.print_info
# manager.send_report
# employee.print_info
# manager.blah
# puts manager.full_name
p manager.employees