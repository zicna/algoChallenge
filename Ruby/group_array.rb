# input => ['a', 'b', 'a', 'c', 'c', 'b', 'a', 'c']
# output => ['a', 'a', 'a', 'b', 'b', 'c', 'c', 'c']

def group_array(array)
    hash_table = {}
    new_array = []

    array.each do |char|
        if hash_table[char]
            hash_table[char] += 1
        else
            hash_table[char] = 1
        end
    end

    hash_table.each do |char, number|
        number.times do
            new_array << char
        end
    end
    new_array
end


puts group_array(['a', 'b', 'a', 'c', 'c', 'b', 'a', 'c'])
