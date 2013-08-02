# **Factorial Finder** 
# 
# The Factorial of a positive integer, n, is defined as the product of the 
# sequence n, n-1, n-2, ...1 and the factorial of zero, 0, is defined as being 
# 1. Solve this using both loops and recursion.

def factorial(n):
	if n == 0:
		return 1

	result = n
	n -= 1

	while n > 0:
		result *= n
		n -= 1

	return result

input = input("Enter a number to factorialize: ")
print(input + '! = ' + str(factorial(int(input))))
