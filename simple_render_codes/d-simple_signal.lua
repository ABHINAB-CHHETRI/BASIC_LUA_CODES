local width = 6
local height = 4

local frames = 20
local delay=0.4
local count=1

for i=1,frames do 
    os.execute("clear")
    if count < width then
        io.write(string.rep(" ",i))
        io.write(string.rep("-",3))
    elseif count == width or count == 2* width then
        for j=1,height do 
            io.write("\n")
            io.write(string.rep(" ",i))
            io.write("|")
        end
    elseif count < (2*width) then
        io.write(string.rep("\n",height))
        io.write(string.rep(" ",i))
        io.write(string.rep("-",3))
    end
    count = count + 1 
    if count > 2 * width then
        count = 1
    end
    io.flush() --otherwsise outputs are buffered
    os.execute("sleep " .. delay)
end

