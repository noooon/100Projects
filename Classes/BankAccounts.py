# **Bank Account Manager** - Create a class called Account which will be an 
# abstract class for three other classes called CheckingAccount, SavingsAccount
# and BusinessAccount. Manage credits and debits from these accounts through 
# an ATM style program.

class Account:	
	def __init__(self):
		self.value = 0
	
	def getValue(self):
		return self.value

class CheckingAccount(Account):
	def someFunc():
		pass

class SavingsAccount(Account):
	def someFunc():
		pass

class BusinessAccount(Account):
	def someFunc():
		pass

cAccount = CheckingAccount()
print(cAccount.getValue())

def doMenu():
	
	pass