# In the optimam solution, we use the sliding window technique.

min_price = Float::INFINITY
max_profit = 0
# prices = [7,1,5,3,6,4]
prices = [7,6,4,3,1]

prices.each do|price|
  min_price = [price, min_price].min 
  profit = price - min_price
  max_profit = [max_profit, profit].max
end

p max_profit
