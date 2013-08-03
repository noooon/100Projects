# **Unit Converter (temp, currency, volume, mass and more)**
# 
# Converts various units between one another. The user enters the type of unit 
# being entered, the type of unit they want to convert to and then the value. 
# The program will then make the conversion.

from units import unit
from units.predefined import define_units

define_units()

value = float(input("Enter value to convert: "))
unitAStr = input("Enter unit type of value: ")
unitBStr = input("Enter unit type of conversion: ")
unitA = unit(unitAStr)
unitB = unit(unitBStr)

print("Result: " + str(unitB(unitA(value))))
