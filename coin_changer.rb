
def coin_changer(cents_received)
	
	coins = {}, quarters = {}, dimes = {}, nickles = {}, pennies = {}, quarters_and_dimes = {}, nickles_and_pennies = {}
	#Creates various empty hashes of different names
	if cents_received >=25
	# an if statement is initiated when cents_received(the arguement) is greater than or equal to the number specified	
		quarters[:quarters] = cents_received / 25
		#once if statement is initiated, this adds a key called quarters with a value equal to the passed in arguement divided by 25 to a hash
		#also called quarter. It literally says add a key named quarters to the hash named quarters with a value equal to cents received divided by 25.
		cents_received = cents_received % 25
		#This line takes the same number(defined in cents_received) in as the on before it and divides it by 25, then takes the remainder and 
		#sets cents_received to this, if the number is greater than 0 it will trigger one of the following if statements and go through the same process
		#but with their respective numbers and hashes.
	end	
	if cents_received >=10
		dimes[:dimes] = cents_received / 10
		cents_received = cents_received % 10
	end	
	if cents_received >=5
		nickles[:nickles] = cents_received / 5
		cents_received = cents_received % 5
	end	
	if cents_received >=1
    	pennies[:pennies] = cents_received / 1
	end
	quarters_and_dimes = quarters.merge(dimes)
	nickles_and_pennies = nickles.merge(pennies)
	#Theses cause the quarters hash and dimes hash, and the nickles hash and pennies hash to merge. turning each set of hashes into one.
	coins = quarters_and_dimes.merge(nickles_and_pennies)
	#this takes the two hashes populated in previous two lines merges them into on hash containing all said values.
	#eg. If cents_received had a argument of 32 passed in, this hash would look like, {quarters=>1, dimes=>0, nickles=>1, pennies=>2}
    coins

end    


def coin_changer_multi
	p "How many groups of pennies would you like turned into larger change?"
	n = gets.chomp.to_i
	count = 0 
		n.times do |x|
		count+=1	
		p "How many pennies in group #{count}"
		cents_received = gets.chomp.to_i

			coins = {}, quarters = {}, dimes = {}, nickles = {}, pennies = {}, quarters_and_dimes = {}, nickles_and_pennies = {}
			if cents_received >=25
				quarters[:quarters] = cents_received / 25
				cents_received = cents_received % 25
			end	
			if cents_received >=10
				dimes[:dimes] = cents_received / 10
				cents_received = cents_received % 10
			end	
			if cents_received >=5
				nickles[:nickles] = cents_received / 5
				cents_received = cents_received % 5
			end	
			if cents_received >=1
		    	pennies[:pennies] = cents_received / 1
			end
			quarters_and_dimes = quarters.merge(dimes)
			nickles_and_pennies = nickles.merge(pennies)
			coins = quarters_and_dimes.merge(nickles_and_pennies)
		    p "You are handed back #{coins}"
		end    

end    

coin_changer_multi