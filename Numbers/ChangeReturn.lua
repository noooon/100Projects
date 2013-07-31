-- **Change Return Program** 
-- 
-- The user enters a cost and then the amount of money given. The program will 
-- figure out the change and the number of quarters, dimes, nickels, pennies needed 
-- for the change.

io.write("Enter amount due ($##.##): ")
due = io.read() * 100 -- Covert currencies to pennies.

io.write("Enter amount paid: ")
paid = io.read() * 100

pounds = 0
fifties = 0
twenties = 0
tens = 0
fives = 0
twos = 0
ones = 0

due = paid - due

while due >= 100 do
	pounds = pounds + 1
	due = due - 100
end

while due >= 50 do
	fifties = fifties + 1
	due = due - 50
end

while due >= 20 do
	twenties = twenties + 1;
	due = due - 20
end

while due >= 10 do
	tens = tens + 1;
	due = due - 10
end

while due >= 5 do
	fives = fives + 1;
	due = due - 5
end

while due >= 2 do
	twos = twos + 1;
	due = due - 2
end

while due >= 1 do
	ones = ones + 1;
	due = due - 1
end

io.write("Your change is: ", 
	pounds, " x $1 ",
	fifties, " x 50p ", 
	twenties, " x 20p ", 
	tens, " x 10p ", 
	fives, " x 5p ", 
	twos, " x 2p ",
	ones, " x 1p ")
