require "../employee.rb"
# require "../modules/email_reporter.rb"
# require "../manager.rb"
require "../intern.rb"

intern = Intern.new(first_name: "April", last_name: "Ludgate", salary: 20000, active: true)
intern.print_info
# intern.send_report
# manager = Manager.new(first_name: "Michael", last_name: "Scotts", salary: 50000, active: true, employees: [intern])
# manager.send_report
# employee1 = Employee.new({active: true, last_name: "Morco", salary: 1000000})
# intern.foobar
# manager.foobar
# employee1.print_info