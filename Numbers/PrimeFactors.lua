--
-- Find all prime factors of the input number.

n = tonumber(arg[1])
i = 2

while i <= n do
	while n % i == 0 do
		print(i)
		n = n / i
	end
	i = i + 1
end
