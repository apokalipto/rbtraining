# TASK 1: 
# => 1) Write a method to determine if the argument input is a palindrome
# => 2) The input is case insensitive. The input may contain lowercase and uppercase letters. 
# 			The combination should not affect the result.
#  			Example: REDDER, RedDer and redder are palindromes.
module Task1

	def self.palindrome?(input)
		input.downcase == input.reverse.downcase
	end
		
end

module MontyHall
	#Task 2: Implement the Monty Hall Game
	# http://en.wikipedia.org/wiki/Monty_Hall_problem
	# * the game argument is an array with the following properties:
	# 	1) The array contains only String Objects
	# 	2) The strings in the array are only: "GOAT" or "CAR"
	# 	3) There is only one "CAR" in each game. All others are "GOAT"
	# * The program asks the user to enter a number between 1 and n. Remember that n may be variable. How can you determine n from the game argument?
	# * The user enters HIS CHOICE. The result is not shown
	# * The program chooses another door that IS NOT the "CAR". The result is shown.
	# * The program asks the user to enter HIS FINAL CHOICE. It can be the previous choice. It cannot be the opened door shown by the program.
	# *	The user enters HIS FINAL choice and the result is shown.
	# * If the result is a "CAR", the program tells the user "YOU WIN!"
	# * If the result is a "GOAT", the program tells the user "YOU LOOSE!"
	def self.play(game)
		# See the documentation for the class Array. (google ruby Array)
		# Use the method puts to output text
		# Use the method gets to recive user input
		# To iterate an array, you may use the method .each 
	end
	
	
end


