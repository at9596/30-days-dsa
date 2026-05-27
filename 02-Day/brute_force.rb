# Best time to buy and sell stock
# You are given a prices array.
# Find the maximum profit that can be achieved by buying and selling the stock once.
# If no profit can be made, return 0.

prices = [7,1,5,3,6,4]
# prices = [7,6,4,3,1]

n = prices.count
max_profit = 0

(0...n).each do |i|
  ((i + 1)...n).each do |j|

    diff = prices[j] - prices[i]

    max_profit = [diff, max_profit].max
  end
end

p(max_profit)
