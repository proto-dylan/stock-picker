def stock_picker(stocks)
    profit = []
    low = 0
    high = 0 
    buy = 0
    sell = 0 
    best = 0
    bought = false
    stocks.each_with_index do |price, index|
        if index == 0
            low = price
        else
            if price < low
                low = price
                if bought != true
                    buy = index
                end
            else
                high = price
            end
        end
        if index!= stocks.length
            profit[index] = high - low
            if index != 0
                if profit[index] > best
                    best = profit[index]
                    sell = index
                    bought = true
                end
            end
        end
    end
    puts "[" + buy.to_s + "," + sell.to_s + "]"
end

stock_picker([17,3,6,9,15,8,6,1,10])
