--
-- This version prints the entire sequence up to N.

count = 0
lastNumberA = 0;
lastNumberB = 0;

while (count ~= arg[1] - 1) do
	if count < 2 then
		fibNum = count
	else
		fibNum = lastNumberA + lastNumberB
	end

	lastNumberA = lastNumberB
	lastNumberB = fibNum
	print(fibNum)
	count = count + 1
end
