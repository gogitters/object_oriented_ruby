# arrays
# employee1 = ['Sami', 'Morco', 1000000, true]
# employee2 = ['Andy', 'Zhao', 100000, true]

# puts employee1[0] + " " + employee1[1] + " makes $" + employee1[2].to_s + " a year."
# puts employee2[0] + " " + employee2[1] + " makes $" + employee2[2].to_s + " a year."
# puts "#{employee1[0]} #{employee1[1]} makes $#{employee1[2]} a year."

# hash
employee1 = { 'last_name' => 'Morco', 'first_name' => 'Sami', 'salary' => 1000000, 'active' => true }
# employee2 = { 'first_name' => 'Andy', 'last_name' => 'Zhao', 'salary' => 100000, 'active' => true }
puts "#{employee1['first_name']} #{employee1['last_name']} makes $#{employee1['salary']} a year."

# hash with symbols
employee3 = { :first_name => 'Andy', :last_name => 'Zhao', :salary => 100000, :active => true }
puts "#{employee3[:first_name]} #{employee3[:last_name]} makes $#{employee3[:salary]} a year."

# new hash symbol syntax
employee4 = { first_name: 'Brian', last_name: 'Rice', salary: 1, active: true }
puts "#{employee4[:first_name]} #{employee4[:last_name]} makes $#{employee4[:salary]} a year."
