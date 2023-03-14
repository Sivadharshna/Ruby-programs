class Node
    @data
    @next 
    def initialize d
        @data=d
        @next=nil
    end
    def next= node
        @next=node
    end
    def get_data
        return @data
    end
    def get_next
        return @next
    end
end

class LinkedList

    @@head=nil
    @@tail=nil
    def insert 
        puts "Enter the value: "
        newnode=Node.new(gets.to_i)
        if @@head==nil
            @@head=newnode
            @@tail=newnode
        else
            @@tail.next= newnode
            @@tail=@@tail.get_next
        end
    end
        
    def delete
        puts "Enter the value to be deleted"
        val=gets.to_i
        current=@@head
        if @@head.get_data == val 
            temp=@@head
            @@head=@@head.get_next 
            temp=nil
        else
            while current.get_next !=nil && (current.get_next).get_data != val
                current=current.get_next
            end
            if(current.get_next ==nil)
                puts "Data not fount"
            else
                temp=current.get_next
                current.next= current.get_next.get_next
                temp=nil
            end
        end
    end

    def display
        if @@head==nil 
            puts "List is Empty"
        else
            current=@@head
            while current!=nil 
                print current.get_data
                print " -> "
                current=current.get_next 
            end
        end
    end
end

#___________________<main>________________________
t=1
while t==1
    puts("\nEnter your choice\n1.Insert a newnode\n2.Delete a node\n3.Print the list\n4.Exit")
    ch=gets.to_i
    sll=LinkedList.new
    case ch 
    when 1
        sll.insert 
    when 2
        sll.delete
    when 3
        sll.display
    when 4
        t=0
    end
end
