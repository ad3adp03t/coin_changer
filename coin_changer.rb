
def coin_changer(cents_received)
	
	coins = {}
	nickles = {}
	pennies = {}

	if cents_received >=5
		nickles[:nickle] = cents_received / 5
		cents_received = cents_received % 5
	end	
	if cents_received >=1
    	pennies[:penny] = cents_received / 1
	end
	coins = nickles.merge(pennies)
    coins

end    