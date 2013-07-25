--
-- This version prints justs the Nth Fibonacci number.

function fib(n)
	if n < 2 then
		-- print(n)
		return n
	else
		return fib(n - 1) + fib(n - 2)
	end
end

print(fib(arg[1] - 1));
