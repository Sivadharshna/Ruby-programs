print "Enter a string: "
s=gets
checked=Array.new
count=0
s.each_char {|a| 
    if !checked.include?(a)
        checked.push(a)
        if(s.include?(a+a+a))
            if(s.index(a+a+a)<s.length-3  && s[s.index(a+a+a)+3]!=a)
                count+=1
            end
        end
    end
}
puts(count)