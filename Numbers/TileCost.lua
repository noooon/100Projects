-- 
-- Calculate the cost of a tile based on inputs by user.

io.write("Enter the width of the floor: \n")
width = io.read()

io.write("Enter the length of the floor: ", "\n");
height = io.read()

io.write("Enter the cost per tile: \n");
cost = io.read()

io.write("The total cost of the entire floor is: ", width * height * cost, "\n")
