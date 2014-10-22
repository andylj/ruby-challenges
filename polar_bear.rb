class Bear

	attr_accessor :name, :number_of_humans

end

class PolarBear < Bear
		
	def roar
		return "Roooaaaarrrr"
	end
	
end

my_polar_bear = PolarBear.new
my_polar_bear.name = "Larry"
my_polar_bear.number_of_humans = 5

my_polar_bear_name = my_polar_bear.name
humans_eaten = my_polar_bear.number_of_humans

puts "#{my_polar_bear_name} has eaten #{humans_eaten} humans and shouts #{my_polar_bear.roar}"

puts my_polar_bear.inspect