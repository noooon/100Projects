-- 
-- Calculate Pi to input decimal place.

function pi (i)
	return (1 / 16 ^ i) * ((4 / (8 * i + 1)) - (2 / (8 * i + 4)) - (1 / (8 * i + 5)) - (1 / (8 * i + 6)))
end

p = 0
k = 0

while k < tonumber(arg[1]) do
	p = p + pi(k)
	k = k + 1
end

print(p)
