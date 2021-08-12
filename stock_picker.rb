def stock_picker(stock_price)
  stock_price.pop if stock_price.index(stock_price.min) == stock_price.length-1
  stock_price.shift if stock_price.index(stock_price.max) == 0

  stock_price.delete_if do |price|
    stock_price.index(price) > stock_price.index(stock_price.max)
  end

  return stock_price.minmax

end

p stock_picker([17,3,6,9,15,8,6,10,1])