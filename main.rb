require "./employee"
# require "./modules/email_reporter"
# require "./manager"
require "./intern"

intern = Actualize::Intern.new(first_name: "April", last_name: "Ludgate", salary: 20000, active: true)
intern.print_info
# intern.send_report
# manager = Manager.new(first_name: "Michael", last_name: "Scotts", salary: 50000, active: true, employees: [intern])
# manager.send_report
employee1 = Actualize::Employee.new({active: true, last_name: "Morco", salary: 1000000})
employee1.print_info
# intern.foobar
# manager.foobar
