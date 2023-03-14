def best_sum sum,a 
    best=Array.new(sum+1){Array.new}
    for i in a
        best[i].push(i)
    end
    for i in 0..sum
        for j in i..sum
            if(best[i].count>0 && best[j].count>0)
                if((i+j)<=sum)
                    temp=Array.new
                    temp.concat(best[i])
                    temp.concat(best[j])
                    if(temp.length<best[i+j].length || best[i+j].length==0)
                        best[i+j]=temp
                    end
                end
            end
        end
    end
    return best[sum]
end

#-------------main-----------
print "Enter the numbers: "
s=gets.split()
num=Array.new()
for i in s
    num.push(Integer(i))
end
print "Enter the sum value: "
sum=gets.to_i 
puts("The best sum of #{sum} is #{best_sum sum,num}")