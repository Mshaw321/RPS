
# Introduce Game

puts
puts "<>------------------------------------<>"
puts "|  Welcome to Rock, Paper, Scissors!   |"
puts "<>------------------------------------<>"
puts

########################################
############ DEFINE METHODS ############
########################################

# Define Choice Method to get computer selection 

def choice
	
	$c_choice = 1 + rand(3)
	
	# Convert int to appropriate string
	
	case $c_choice 
		when 1 
			$c_choice = "rock"
		when 2 
			$c_choice = "paper"
		when 3
			$c_choice = "scissors"
	end
	
	puts $c_choice.upcase
	
end

# Define Play Again Method

def p_again
	
	puts
	puts "Shoot again? (y/n):"
	puts
	choice2 = gets.chomp.downcase
	puts
	
	case choice2
		when "y"

			$play = "y"
		else

			$play = "n"
	end
	
end

#############################
######## START GAME #########
#############################

# Run Game Logic

$play = "y"

while $play == "y"

# Get user input

	puts
	puts "Please choose Rock, Paper, or Scissors:"
	puts
	p_choice = gets.chomp.downcase 
	puts

# Output Results
	puts "()================================()"
	puts
	puts "You have selected:"
	puts
	puts p_choice.upcase
	puts
	puts "Computer has selected:"
	puts
	choice
	puts
	puts "()================================()"

# perform comparison 

	if p_choice == "rock" && $c_choice  == "rock"
	  puts
	  puts "You have both selected rock. It's a tie!"
	  puts
	  p_again
	elsif p_choice == "rock" &&  $c_choice == "paper"
		puts
		puts "Paper covers Rock. You Lose!"
		puts
		p_again
	elsif p_choice == "rock" && $c_choice == "scissors"
		puts
		puts "Rock smashes Scissors! You Win!"
		puts
		p_again
	elsif p_choice == "paper" &&  $c_choice == "paper"
		puts
		puts "You have both selected Paper. It's a tie!"
		puts
		p_again
	elsif p_choice == "paper" && $c_choice == "rock"
		puts
		puts "Paper covers Rock! You Win!"
		puts
		p_again
	elsif p_choice == "paper" && $c_choice == "scissors"
		puts
		puts "Scissors cuts Paper. You Lose!"
		puts
		p_again
	elsif p_choice == "scissors" && $c_choice == "rock"
		puts
		puts "Rock crushes Scissors. You Lose!"
		puts
		p_again
	elsif p_choice == "scissors" && $c_choice == "paper"
		puts
		puts "Scissors cut Paper! You Win! Good Job!"
		puts
		p_again
	elsif p_choice == "scissors" && $c_choice == "scissors"
		puts
		puts "You have both selected Scissors. It's a Tie!"
		puts
		p_again
	else
		puts
		puts "Input Not Recognized."
		puts
		p_again
		
	end

end


  


# Rock vs Scissors
# Rock vs Paper
# Rock vs Rock

# Paper vs Scissors
# Paper vs Paper
# Paper vs Rock

# Scissors vs Scissors
# Scissors vs Paper
# Scissors vs Rocksdf zsdf dsf