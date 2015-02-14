# **Product Inventory Project** - Create an application which manages an 
# inventory of products. Create a product class which has a price, id, and 
# quantity on hand. Then create an *inventory* class which keeps track of 
# various products and can sum up the inventory value.

class Inventory:
	def __init__(self):
		self.productDictionary = {}

	def addNewProduct(self, name, price):
		self.productDictionary[name] = Product(price)

	def setProductQuantity(self, name, quantity):
		if (name in self.productDictionary):
			self.productDictionary[name].setQuantity(quantity)

	def inventoryValue(self):
		totalValue = 0

		for key in self.productDictionary:
			product = self.productDictionary[key]
			print("Product #" + str(product.id) + " price: £" + str(product.price) + " quantity: " + str(product.quantity))
			totalValue += product.price * product.quantity

		return totalValue
		

class Product:
	s_id = 0

	def __init__(self, price):
		self.id = self.__class__.s_id
		self.price = price
		self.quantity = 0

		self.__class__.s_id += 1

	def setQuantity(self, num):
		self.quantity = num

inventory = Inventory()

inventory.addNewProduct("Apples", 1.99)
inventory.addNewProduct("Pears", 2.49)
inventory.addNewProduct("Sausages", 5.99)

inventory.setProductQuantity("Apples", 51)
inventory.setProductQuantity("Pears", 15)
inventory.setProductQuantity("Sausages", 60)

print("Total value of inventory: £" + str(inventory.inventoryValue()))
