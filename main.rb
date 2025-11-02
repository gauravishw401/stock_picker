def stock_picker(stocks)

  profits = {}

  sorted_stocks = stocks.sort 
  sorted_stocks.each do |min|
    min_index = stocks.index(min)
    previous_days = stocks.select {|element| stocks.index(element) < min_index}

    next_days = stocks.difference(previous_days)
    buy = min
    sell = next_days.max
    profit = sell - buy
    profits[[buy, sell]] = profit

  end

  max_profit = profits.values.max
  best_day = profits.key(max_profit).map {|element| stocks.index(element)}
  p best_day

end


# stock_picker([17, 3, 6, 9, 15,  8, 1, 10])

stock_picker([17,3,6,9,15,8,6,1,10])

# stock_picker([15,4,5,3,6, 9 , 10, 9])

stock_picker([8, 736, 373, 6768, 7648, 87, 675])


