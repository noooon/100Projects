#
# **Vigenere / Vernam / Ceasar Ciphers**
# 
# Functions for encrypting and decrypting data messages. Then send them to a friend.
# 
# TODO: 
#   Make case insensitive
#   Currently only does Ceasar encryption
# 

Rotation = -3

Alphabet = [*('a'..'z')]
$cipher = Array.new(26)

for i in 0...26 do
	get = i + Rotation

	# Do overflow
	if get > 25
		get -= 26
	elsif get < 0
		get += 26
	end

	$cipher[i] = Alphabet[get]
end

def encode(str)
	outstr = ""
	for c in 0...str.length
		i = Alphabet.index(str[c])
		outstr[c] = $cipher[i]
	end

	return outstr
end

def decode(str)
	outstr = ""
	for c in 0...str.length
		i = $cipher.index(str[c])
		outstr[c] = Alphabet[i]
	end

	return outstr
end

encoded = encode("hello")
puts encoded
puts decode(encoded)
