def always_three(number)
	(((number + 5) * 2 - 4)/2 - number)
end

puts "Give me a number"

number_one = gets.to_i

puts "Always " + always_three(number_one).to_s