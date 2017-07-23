
def coin_changer(cents_received)
	
	coins = {}
	quarters = {}
	dimes = {}
	nickles = {}
	pennies = {}
	quarters_and_dimes = {}
	nickles_and_pennies = {}
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
    coins

end    