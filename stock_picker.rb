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