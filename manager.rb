require "./employee.rb"
require "./modules/email_reporter.rb"

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
