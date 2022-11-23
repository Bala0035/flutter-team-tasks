legs=int(input("Enter the Legs: "))
fleshes=int(input("Enter the Fleshes: "))
wings=int(input("Enter the Wings: " ))
 
if(legs>wings and fleshes>legs ):
    c1=legs/2  or fleshes/1
    c2=round(c1)
    print("The Chicken is: ",c2)


             

elif(legs<wings):
    c1=wings/2
    c2=round(c1)
    print("The Chicken is: ",c2)

elif (legs==wings):
    c1=legs/2 or wings/2
    c2=round(c1)
    print("The Chicken is: ",c2)
print("............")
    
leg=2
flesh=1
wing=2
Total_legs=(leg*c2)
print("Total Chicken:",Total_legs)
Total_flesh=(flesh*c2)
print("Total Chicken: ",c2)
Total_wings=(wings*c2)
print("Total_wings: ",c2)

print("..............")

Balance_legs=(Total_legs-legs)
print("Balance_legs: ",Balance_legs)
Balance_fleshes=(Total_flesh-fleshes)
print("Balance_flesh: ",Balance_fleshes)
Balance_wings=(Total_wings-wings)
print("Balance_wings: ",Balance_wings)
