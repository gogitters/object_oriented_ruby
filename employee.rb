module Actualize
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
end
