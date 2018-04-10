input = gets.to_i

random = rand(10)

if input < random
  result = "is less than"
elsif input > random
  result = "is greater than"
else
  result = "equals to"
end

puts "input number (#{input}) #{result} random number (#{random})"
