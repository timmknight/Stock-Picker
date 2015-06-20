stock_prices = [17,3,6,9,15,8,6,1,10]

def stock_picker(stock_prices)
	# Define variables
	buy_day = 0
	sell_day = 0
	maxProfit = 0
	minProfit = 0
	arr = []

# Loop through the stock array and get the sell stock value
	stock_prices.each_with_index do |sellValue, sellStockIndex|
		sell_day = sellStockIndex


# With the stock value loop through the array getting the buy values
	stock_prices.each_with_index do |buyValue, buyStockIndex|

		buy_day = buyStockIndex

		# Work out if the sell stock value is greater than the buy stock value 
		if buy_day < sell_day && (sellValue - buyValue >=0)

			# assign the result of sell stocks value - buy stocks value
			 minProfit = sellValue - buyValue

			 # if this itereations profit is larger than the last assign it to max value and add to the array
			if minProfit > maxProfit
				maxProfit = minProfit

				# Push that value into the array which will have all the profitable stock purchases in
				arr.push([buy_day, sell_day, maxProfit])

			end
		end	
	end
end

# Get the last stock info from the array - this will be the highest profit stock and put values to screen
	puts "Bought on index #{arr.last[0]} " 
	puts "Sold on index #{arr.last[1]}"
	puts "For a profit of £#{arr.last[2]}"
end

stock_picker(stock_prices)
# Should return 1,4,12


