def move(curx,cury,dx,dy,maze,sol,r,c)
    if(curx==dx && cury==dy)
        sol[curx][cury]=1
        return 1
    end
    if(maze[curx][cury]==1)
        sol[curx][cury]=1
        if(curx<r-1 && move(curx+1,cury,dx,dy,maze,sol,r,c)==1 )  #moves down first
            return 1
        end
        if(cury<c-1 && move(curx,cury+1,dx,dy,maze,sol,r,c)==1 )
            return 1
        end
        sol[curx][cury]=0
        return 0
    end
    return 0
end
print("Enter the number of rows and columns: ")
r=gets.to_i
c=gets.to_i
maze=Array.new(r){Array.new(c)}
for i in 0...r
    for j in 0...c
        maze[i][j]=gets.to_i
    end
end
sol=Array.new(r){Array.new(c,0)}
puts "Enter the starting positions: x and y"
sx=gets.to_i
sy=gets.to_i
puts "Enter the destination positions: x and y"
dx=gets.to_i
dy=gets.to_i
if(move(sx,sy,dx,dy,maze,sol,r,c)==1)
    for i in 0...r
        for j in 0...c
            print("#{sol[i][j]} ")
        end
        puts()
    end
else
    puts "No route found"
end

