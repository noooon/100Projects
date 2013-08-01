-- **Binary to Decimal and Back Converter**
--
-- Develop a converter to convert a decimal number to binary or a binary number
-- to its decimal equivalent.

function binaryToDecimal(string)
	local length = string.len(string)
	local decimal = 0
	local i = 0

	while i < length do
		local subString = string.sub(string, i+1, i+1)
		local digit = tonumber(subString)
		local binary = length - 1 - i

		if binary == 0 then
			binary = 1
		else
			binary = 2 ^ binary
		end
		decimal = decimal + digit * binary
		i = i + 1
	end

	return decimal
end

function decimalToBinary(decimal)
	local binary = 0
	decimal = tonumber(decimal)
	local i = 31

	while decimal > 0 do
		local value = 2 ^ i

		if decimal >= value then
			binary = binary + 10 ^ i
			decimal = decimal - value
		end

		i = i - 1
	end

	return binary
end

io.write("Enter 'b' for binary  -> decimal conversion OR\n", "Enter 'd' for decimal -> binary  conversion: ")
mode = io.read()

io.write("Enter number to convert: ")
string = io.read()

io.write("Converted number: ")

if mode == 'b' then
	io.write(binaryToDecimal(string))
elseif mode == 'd' then
	io.write(decimalToBinary(string))
end
