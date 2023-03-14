def factorial fact,n
    if(fact.count==0)
        fact.push(1)
    end
    len=fact.count
    for i in len..n
        fact.push(fact[i-1]*i)
        puts( "#{fact[i-1]}" )
    end
    return fact[n]
end

print("Enter the number of test cases: ")
t=gets.to_i
fact=Array.new
for i in 0...t
    print("\nEnter the number : ")
    n=gets.to_i
    puts "The factorial of #{n} is #{factorial fact,n} "
end
