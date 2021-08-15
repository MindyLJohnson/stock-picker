def stock_picker(stock_prices)
  buy_sell = []

  stock_returns = stock_prices.each_with_index.collect do |buy_price, buy_day|
    stock_prices.each_with_index.collect do |sell_price, sell_day|
      sell_price - buy_price if buy_day < sell_day
    end
  end

  max_return = stock_returns.flatten.compact.max
  buy_sell << stock_returns.index {|returns| returns.include?(max_return)}
  buy_sell << stock_returns[buy_sell[0]].index(max_return)

  return buy_sell

end

p stock_picker([17,3,6,9,15,8,6,1,10])