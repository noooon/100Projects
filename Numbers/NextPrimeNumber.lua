--
-- Find next prime number on user input.

function findNextPrime(lastPrime)
	nextPrime = lastPrime + 1
	d = 2

	while d < nextPrime do
		if nextPrime % d == 0 then
			nextPrime = nextPrime + 1
		else
			d = d + 1
		end
	end

	return nextPrime
end

prime = 0

print("Press enter to find next prime number. Type \"exit\" to stop program.")

while io.read() ~= "exit" do
	prime = findNextPrime(prime)
	print(prime)
end
