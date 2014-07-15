require_relative '01_basics.rb'
require_relative '02_iterations.rb'

descriptions = {
									:task_1=>"01 - Palindrome Test",
									:task_2=>"02 - ATM" 
							 }

class TestIO
	
	@@BUFFER = nil
	
	def self.buffer=(arg)
		@@BUFFER = arg
	end
	
	def get_input
		return @@BUFFER
	end
	
	def print(line)
		return line
	end
end

class Test
	def task_1	
		all_good = true
		positives = %w{civic radar level Rotor noon kayak reviver raCeCar redder madam Malayalam refer}
		negatives = %w{casa carro jugador juan josef mao tucurrique asdf seleccion joel maracas}
		
		positives.each do |word|
			all_good = all_good && Task1.palindrome?(word)
		end

		negatives.each do |word|
			all_good = all_good && !Task1.palindrome?(word)
		end
		all_good ? ret_text = "OK" : ret_text = "ERROR!!! Something is wrong with the 'palindrome?' implementation. Fix it and try again"
		return ret_text
	end
	
	def task_2
	end
end

t = Test.new
Test.public_instance_methods(false).each do |m|
	#puts "FILE: #{self.method(:palindrome?).source_location[0].split('/').last}"
	result = t.send(m)
	puts "  #{descriptions[m]} =>  #{result}"
end

