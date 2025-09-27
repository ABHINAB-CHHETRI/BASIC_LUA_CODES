local frames=10
local  delay=0.3

for f=1,frames do
    os.execute("clear") 
    io.write(string.rep(" ", f-1))
    io.write(string.rep("#", 3))
    io.flush()
    os.execute("sleep " .. delay)
end