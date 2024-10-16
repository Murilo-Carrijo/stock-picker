def stock_picker(list)
  buy_day = 0
  sell_day = 0
  profit = 0

  list.each_with_index do |buy, index|
    list.each_with_index do |sell, index2|
      if index2 > index
        if (sell - buy) > profit
          buy_day = index
          sell_day = index2
          profit = sell - buy
        end
      end
    end
  end
  p "Buy on day #{buy_day} and sell on day #{sell_day} for a profit of $#{profit}"
  return [buy_day, sell_day]
end

stock_picker([17,3,6,9,15,8,6,1,10])