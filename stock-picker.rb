
def stock_picker(array)
    max_profit = 0
    positions = [0,0]
    
    array.each_with_index do |n, index|
        for i in index..(array.length-1)
            if (n - array[i]) < max_profit
                
                max_profit = n - array[i]
                positions = [index, i]
            end
        end
    end
    return positions
end

#Test Cases
#stock_picker([17,3,6,9,15,8,6,1,10])
#=> [1,4]  # for a profit of $15 - $3 == $12

#other tests
#p stock_picker([1,3,6,9,15,8,6,1,30])
#=> [0, 8] # for a profit of $30 - $1 == $29

#p stock_picker([17,3,6,9,15,8,6,1,0])
#=> [1, 4] # for a profit of $15 - $3 == $12

#p stock_picker([4,7,2,3,7,16,8,10,10])
#=> [2, 5] # for a profit of $16 - $2 == $14