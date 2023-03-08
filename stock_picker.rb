# Implement a method #stock_picker that takes in an array of stock prices,
# one for each hypothetical day. It should return a pair of days representing
# the best day to buy and the best day to sell. Days start at 0.

# sample input:
  # stock_picker([17,3,6,9,15,8,6,1,10])
  # => [1,4]  # for a profit of $15 - $3 == $12


def stock_picker(prices)
  buy_day, sell_day, max_profit = 0, 0, 0

  (0..prices.length-1).each do |i|
    (i+1..prices.length-1).each do |j|
      if prices[j] - prices[i] > max_profit
        buy_day, sell_day, max_profit = i, j, prices[j] - prices[i]
      end
    end
  end

  [buy_day, sell_day]
end

stock_picker([17,3,6,9,15,8,6,1,10])
