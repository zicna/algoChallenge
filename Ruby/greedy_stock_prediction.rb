def greedy_stock(array)
    first_price = array[0]
    middle_price = Float::INFINITY

    array.each do |price|
        if price < first_price
            first_price = price
        elsif price > first_price && price < middle_price
            middle_price = price
        else
            return true
        end
    end
    return false
end

puts greedy_stock([5, 2, 8, 4, 3, 7])