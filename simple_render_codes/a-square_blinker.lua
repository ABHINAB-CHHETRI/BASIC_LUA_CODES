local frames = 20
local delay = 0.2 -- Delay in seconds between frames


for f=1,frames do
    os.execute("clear")
    if f%2==0 then --4*4 square
        for m=1,4 do 
            for n=1,4 do 
                io.write("*")
            end
            io.write("\n")
        end
        --
    else --2*2 positioned square
        for i=1,4 do 
            for j=1,4 do
                if i==1 or j==1 or i==4 or j==4 then
                    io.write(" ")
                else
                io.write("*")
                end
            end
            io.write("\n")
        end
    end
    os.execute("sleep " .. delay)
end