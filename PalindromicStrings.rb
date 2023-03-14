
def check_pali s
    if s.eql?(s.reverse)==true
        return 1
    end
    return 0
end


#______________main______________
s=gets.chomp
i=0
count=0
first=""
while count!=3 && first.length<s.length
    first << s[i]
    if( (check_pali first)==1 )
        second=""
        third=""
        for j in i+1...s.size
            second<<s[j]
            third=s[j+1...s.size]
            #puts("#{first} #{second} #{third}")
            if ((check_pali (second))==1 && (check_pali (third))==1)
                puts(first)
                puts(second)
                puts(third)
                count=3
                break
            end
        end
    end
    i+=1
end
if(first.length==s.length)
    puts "No palindrome"
end

