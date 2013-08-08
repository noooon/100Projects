# 
# **Mortgage Calculator**
# 
# Calculate the monthly payments of a fixed term mortgage over given Nth terms at a given
# interest rate. Also figure out how long it will take the user to pay back the loan.

import math

def fixedTerm():
	monthly = principle * (interest / (1 - (1 + interest) ** -numTerms))
	print("Your monthly is: ", str(monthly), "\n")

def adjustableRate():
	initial = float(input("Enter the initial payment value: "))
	years = - 1 / numTerms * (math.log(1 - (principle / initial) * (interest / numTerms))) / math.log(1 + (interest / numTerms))
	print("It will take", str(math.ceil(years * 12)), "months to pay the mortgage")

mode = input("Enter 'f' for fixed-rate mode, and 'a' for variable-rate mortgage mode: ")
principle = float(input("Enter mortgage principle: "))
numTerms = float(input("Enter number of payment terms (months): "))
apr = float(input("Enter APR (as percentage): "))

# interest as a monthly decimal
interest = apr / 12.0 / 100.0 

if mode == 'f':
	fixedTerm()
elif mode == 'a':
	adjustableRate()
