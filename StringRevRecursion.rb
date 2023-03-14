def reverse s,i
    if(i==s.size)
        return
    end
    reverse s,i+1
    print(s[i])
end
print "Enter the String: "
s=gets
reverse(s,0)