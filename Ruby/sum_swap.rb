def  sum_swap(array_1, array_2)
    # * init has_table and sums
    hash_table = {}
    sum_1 = 0
    sum_2 = 0
    # * map over array_one to get sum and create hash table for array one 
    array_1.each_with_index do |num, index|
        hash_table[num] = index
        sum_1 += num
    end
    # puts sum_1, hash_table
    # * itterate over array_2 and to get it's sum
    array_2.each_with_index do |num, index|
        sum_2 += num
    end
    # puts sum_2

    # * calc shift amount depending of wich array has larger sum
    shift_amount = sum_1 >= sum_2 ? ( sum_1 - sum_2) / 2 : ( sum_2 - sum_1) / 2
    # puts shift_amount

    # puts hash_table[array_2[2] + shift_amount], array_2

    # * itterate over seond array to chec if we have complementary number in has_table
    # * on  position array[num+ shift_amount]
    array_2.each_with_index do |num, index|
        # puts num + shift_amount
        if hash_table[num + shift_amount]
            puts [hash_table[num + shift_amount]]
            
            return "swap number from array_2 on position: #{index}, with number form array_1 on position #{hash_table[num + shift_amount]} to get equal sums."
        end
    end
    return false


end

# ! this solution only works if array_1 is bigger then array_2
# ! and if difference between sums of two arrays is integer
# ! to check the sum of array => array.inject(0){|sum, x| sum + x}


arr_1 = [5, 3, 3, 7]
# => sum of arr_1 = 18
arr_2 = [4, 1, 1, 6]
# => sum of arr_2 = 12

arr_3 = [6, 7, 8]
#  => sum = 21 
arr_4 = [1, 2, 3, 4, 5]
# => sum = 15

arr_5 = [10, 15, 20]
arr_6 = [5, 30]

puts(sum_swap(arr_1, arr_2))

puts(sum_swap(arr_3, arr_4))

puts(sum_swap(arr_5, arr_6))



