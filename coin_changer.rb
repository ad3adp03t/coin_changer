
def coin_changer(cents_received)
	
	coins = {}
	dimes = {}
	nickles = {}
	pennies = {}
	dimes_and_nickles = {}
	if cents_received >=10
		dimes[:dime] = cents_received / 10
		cents_received = cents_received % 10
	end	
	if cents_received >=5
		nickles[:nickle] = cents_received / 5
		cents_received = cents_received % 5
	end	
	if cents_received >=1
    	pennies[:penny] = cents_received / 1
	end
	dimes_and_nickles = dimes.merge(nickles)
	coins = dimes_and_nickles.merge(pennies)
    coins

end    