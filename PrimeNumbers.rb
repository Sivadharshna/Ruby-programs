def prime n
    cnt=0
    num=2
    arr=Array.new
    until cnt==n
        flag=true
        for i in 2..Math.sqrt(num)
            if(num%i==0)
                flag=false
                break
            end
        end
        if(flag==true)
            #puts num
            arr.push(num)
        end
        num+=1;
        cnt+=1;
    end
    return arr
end

print "Enter the number of prime numbers to be printed: "
n=gets.to_i
arr=prime n
puts arr

