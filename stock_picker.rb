def stock_picker(stock_prices)
  buy_sell = []

  #Find largest delta
  stock_returns = stock_prices.each_with_index.collect do |buy_price, buy_day|
    stock_prices.each_with_index.collect do |sell_price, sell_day|
      sell_price - buy_price if buy_day < sell_day
    end
  end

  return stock_returns.flatten.compact.max

end

p stock_picker([17,16,3,6,9,15,8,6,1,10])