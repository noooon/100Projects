--
-- This version prints the entire sequence up to N.

function fib(n)
	if n < 2 then
		-- print(n)
		return n
	else
		return fib(n - 1) + fib(n - 2)
	end
end

count = 0

while (count ~= arg[1] - 1) do
	print(fib(count))
	count = count + 1
end
