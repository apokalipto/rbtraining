# !@!@!@!@!@ IMPORTANT !@!@!@!@!@!@!@
# TO run this program during development:
# ruby 02_iterations.rb
module Task2
	
	# this class shoudl NOT PEFORM ANY INPUT OR OUTPUT. It should ONLY be responsible of managing
	# the balance of the account
	class Atm
		attr_accessor :balance
		
		def initialize(initial_balance)
			@balance = initial_balance
		end
		
		def deposit(amount)
			#TODO
		end
		
		def withdrawl(amount)
			#TODO
		end	
		
		#this method is already implemented it just returns the balance
		def show_balance
			return @balance
		end	
	end
	
	
	class AtmTest
		# io is input output. a helper class will be used to get the input from the user and to
		# print to screen. The class has TWO methods: get_input and print. See how it is used in the 
		# initialize method.
		attr_accessor :io 
		attr_accessor :atm
		attr_accessor :initial_balance
		
		#This is the constructor of the class. Nothing to do here
		def initialize(io)
			@io = io
			io.print('Enter the initial balance: ')
			@initial_balance = io.get_input
			@atm = Atm.new(@initial_balance)
			puts "ATM initialized with #{@atm.balance}"
		end
		
		def run
			# The program will then repeatedly prompt the 
			# customer to deposit money, withdraw money, 
			# inspect balance, or quit, using the letters D, W, B, and Q.
			# The program must accept input in uppercase or lowercase.
			
			# For deposits, the program prompts for an amount. The amount must be greater than zero. If the amount is valid, the program will add the deposit amount to the customer’s balance and display the new balance.
			# For withdrawals, the program prompts for an amount. The amount must be greater than zero and less than or equal to the current balance. If the amount is valid, the program will subtract the withdrawal amount from the customer’s balance and display the new balance.
			# For a balance inspection, the program simply displays the current balance.
			# When the customer chooses to quit, the program prints the balance and quits
			# In case of any invalid input (either command or amount), your program must give an appropriate error message that tells the customer how to fix it. You can not just say “Error!”—that is not helpful.
			
			# Use the Atm class. Implement the deposit, withdrawl and show_balance_methods there
			# and use them here. Example (YOU SHOULD CHANGE THIS)
			@io.print("Initial Balance: #{@atm.show_balance}")
			#=> should be the intial balance
			
			@atm.deposit(100)
			@io.print("Balance: #{@atm.show_balance}")
			#=> should be the inital balance + 100
			
		end
		
	end
end

#this class is a helper class to interact through the console. 
class ConsoleInputHelper
	def get_input
		i = gets
		return i.chomp
	end
	
	def print(line)
		puts line
	end
end

Task2::AtmTest.new(ConsoleInputHelper.new).run
