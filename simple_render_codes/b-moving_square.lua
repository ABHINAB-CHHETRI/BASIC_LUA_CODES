local frame = 40
local delay = 0.1
local count =0

for f=1,frame do
    os.execute("clear")
    if count==0 then 
        for m=1,4 do 
            for n=1,4 do 
                io.write("*")
            end
            io.write("\n")
        end
    end
    if count==1 then 
        for m=1,4 do 
            for n=1,5 do 
                if n==1  then 
                    io.write(" ")
                else
                    io.write("*")
                end
            end
            io.write("\n")
        end
    end
    if count==2 then 
        for m=1,4 do 
            for n=1,6 do 
                if n==1 or n==2 then 
                    io.write(" ")
                else
                    io.write("*")
                end
            end
            io.write("\n")
        end
    end

    count=count+1
    if count==3 then 
        count=0
    end
    os.execute("sleep " .. delay)
end
