loop do
	choicesComp = ["Rock", "Paper", "Scissors"]

	computerChoice = choicesComp.sample

	puts "Choose between Rock, Paper, and Scissors!"

	playerChoice = gets.chomp.capitalize

	sleep 0.2

	announcer = "The computer chose: " + computerChoice

	sleep 0.2

		if !(playerChoice == "Rock" || playerChoice == "Paper" || playerChoice == "Scissors")
			puts "Please choose only between Rock, Paper and Scissors. Try again!"
			puts "----------------------------------------"

			sleep 1
			redo

		elsif computerChoice == playerChoice

			puts announcer

			sleep 0.75

			puts "Tie!"

		elsif (playerChoice == "Scissors" && computerChoice == "Paper" || playerChoice == "Paper" && computerChoice == "Rock" || playerChoice == "Rock" && computerChoice == "Scissors")
			
			puts announcer

			sleep 0.75

			puts "Congratulations, you win!"

		else

			puts announcer

			sleep 0.75

			puts "Sorry, you loose!"

		end

	sleep 0.5


	def validateDec ()

			puts "Do you want to play another round? (Y/N)"

			playerDecision = gets.chomp.upcase

			if !(playerDecision == "N" || playerDecision =="Y")
					puts "Sorry, you typed neither 'N' nor 'Y'. Please try again!"
					validateDec()
					
			elsif playerDecision == "N"
					exit

			else

			end
	end

	validateDec()

end