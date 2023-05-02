def stock_picker(stock)
  profit = 0
  result = Array.new()

  stock.each_with_index do |buy, buy_index|
    stock.each_with_index do |sell, sell_index|
      if profit < sell - buy && buy_index < sell_index
        profit = sell - buy
        result = [buy_index, sell_index]
      end
    end
  end
  result
end

stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
# => [1, 4]
