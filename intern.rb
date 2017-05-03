require "./employee.rb"
require "./modules/email_reporter.rb"

module Actualize
  class Intern < Employee
    include EmailReporter
  end
end
