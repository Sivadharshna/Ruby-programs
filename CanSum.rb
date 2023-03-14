def can_sum n,num
    condition=Array.new(n+1,false)
    for i in num
        if i<=n
            condition[i] = true
        end
    end
    for i in 0..n
        for j in i..n
            if( condition[i]==true && condition[j]==true)
                if(i+j<=n)
                    condition[i+j]=true
                end
            end
        end
    end
    return condition[n]
end
#__________main____________
print "Enter the size of array: "
n=gets.to_i
a=Array.new(n)
print "Enter the array elements: "
for i in 0...n
    a[i]=gets.to_i
end
print "Enter the sum value: "
sum=gets.to_i
puts can_sum sum,a
