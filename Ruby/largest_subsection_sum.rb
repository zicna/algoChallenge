def largest_subsection_sum(array)
    largest_sum =0
    current_sum = 0

    array.each do |number|
        if current_sum + number < 0 
            current_sum = 0
        else
            current_sum += number
            largest_sum = current_sum if current_sum > largest_sum
        end
    end
    largest_sum
end

puts largest_subsection_sum([3, -4, 4, -3, 5, -9])