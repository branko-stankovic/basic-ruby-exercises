def stock_picker(days)
  best_price = 0
  best_days = []

  for buy in 0..(days.length - 2)
    for sell in (buy + 1)..(days.length - 1)

      if days[sell] - days[buy] > best_price
        best_days = [buy, sell]
        best_price = days[sell] - days[buy]
      end
    end
  end
  p best_days
end

stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10]) # [1,4] for a profit of $15 - $3 == $12
