local width = 70    -- number of columns (horizontal length)
local height = 20   -- number of rows (vertical amplitude)

-- Draw sine wave horizontally across terminal
for row = height, 1, -1 do
    for x = 1, width do
        -- Calculate normalized sine value from 0 to 1
        local y = (math.sin((x / width) * 2 * math.pi) + 1) / 2
        -- Map the sine value to row height
        local sine_row = math.floor(y * (height - 1)) + 1

        if sine_row == row then
            io.write("*")
        else
            io.write(" ")
        end
    end
    io.write("\n")
end
