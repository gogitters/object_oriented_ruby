require "./employee.rb"
require "./modules/email_reporter.rb"

class Intern < Employee
  include EmailReporter
end
intern = Intern.new(first_name: "foo")
intern.print_info