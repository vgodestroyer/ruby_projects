def stock_picker(prices)
    buying = prices[0]
    buying_index = 0
    profit = 0
    result = []

    prices.each_with_index do |price,  index|
        if price > buying
            buying = price
            buying_index = index
        end 
        
        if price - buying > profit
            profit =  price - buying
            result = [buying_index, index]
        end 
    end
    result
end 