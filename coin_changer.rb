
def coin_changer(cents_received)
	
	coins = {}
	if cents_received >=5
		coins[:nickle] = cents_received / 5
		cents_received = cents_received % 5
	end	
	if cents_received >=1
    	coins[:penny] = cents_received / 1
	end
    coins

end    