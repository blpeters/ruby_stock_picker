def stock_picker(array)
  max_price_difference = 0
  buy_sell_arr = ['', '']

  (0..(array.length - 2)).each do |i|
    ((i + 1)..(array.length - 1)).each do |j|
      next unless array[j] - array[i] > max_price_difference

      max_price_difference = array[j] - array[i]
      buy_sell_arr[0] = i
      buy_sell_arr[1] = j
    end
  end
  puts "buy on day #{buy_sell_arr[0]}, sell on day #{buy_sell_arr[1]} for a profit of #{max_price_difference}"
  buy_sell_arr
end
stock_picker([9, 7, 18, 4, 15, 20, 24, 8, 11, 2, 14])
stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
