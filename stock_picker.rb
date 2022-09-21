def stock_picker(prices)
    profit_days = Hash.new(0)

    prices.each_index do |day|
        prices.each_index do |other_day|
            profit = prices[other_day] - prices[day]
            profit_days[[day, other_day]] = profit if other_day > day
        end
    end

    profit_days.sort_by {|day, profit| -profit}[0][0]
end

p stock_picker([17,3,6,9,15,8,6,1,10])