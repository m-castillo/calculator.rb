# 1. Enter a numeric value
# 2. Numeric value cannot contain letters (if so, alert user, and only continue when criteria is true)
# 3. User chooses math operation
# 4. Results
# 5. Ask user if wants to do more math.
# 6. If user decides to do so, go back to enter the numbers. If no, end.

puts "--- Calculator ---"
puts "--- You can add, substract, multiply and divide ---"
puts

begin

  puts "--- What is your first number? ---"
  first_number = gets.chomp

  until first_number =~ /[0-9][^a-zA-z]$/
    puts
    puts "**** Please enter a numeric value ****"
    first_number = gets.chomp
  end
  
  puts "--- What is your second number? ---"
  second_number = gets.chomp

  until second_number =~ /[0-9][^a-zA-z]$/
    puts
    puts "**** Please enter a numeric value ****"
    second_number = gets.chomp
  end

  puts "--- Great! We have #{first_number} and #{second_number}. What would you like to do? 1 = Add, 2 = Substract, 3 = Multiply, 4 = Divide ---"
  operation = gets.chomp
  puts

  if operation == "1"
    puts "--- Your result is #{first_number.to_i + second_number.to_i} ---"
  elsif operation == "2"
    puts "--- Your result is #{first_number.to_i - second_number.to_i} ---"
  elsif operation == "3"
    puts "--- Your result is #{first_number.to_i * second_number.to_i} ---"
  elsif operation == "4"
    puts "--- Your result is #{first_number.to_f / second_number.to_f} ---"
  else
    puts "--- Seriously? Options were 1-4 ---"
  end

  puts
  puts "Do you want to do another math operation? Y or N"
  continue = gets.chomp.downcase
  
end while continue == "y"


