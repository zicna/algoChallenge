def array_max(array)

    greatest_number = array[0]

    array.map do |number|
        if number > greatest_number
            greatest_number = number
        end
    end
    greatest_number
end
# 
puts array_max([1,2,3,4,5,6,7,8,8,4,33,3,4,4,2,333,4,222,52,51,51])

# => this algo just takes O(N) times