-- 
-- **Mortgage Calculator**
-- 
-- Calculate the monthly payments of a fixed term mortgage over given Nth terms at a given
-- interest rate. Also figure out how long it will take the user to pay back the loan.

io.write("Enter mortgage principle: ")
principle = io.read()

io.write("Enter number of payment terms (months): ")
numTerms = io.read()

io.write("Enter APR (as percentage): ")
apr = io.read()

interest = apr / 12.0 / 100 -- interest as a monthly decimal.

monthly = principle * (interest / (1 - (1 + interest) ^ -numTerms))

io.write("Your monthly is: ", monthly, "\n")

# years = - 1/q * (LN(1-(B/m)*(r/q)))/LN(1+(r/q))

Where:

q = amount of annual payment periods
r = interest rate
B = principal
m = payment amount
n = amount payment periods
LN = natural logarithm
