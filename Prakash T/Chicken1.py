legs=int(input("Enter the Legs: "))
fleshes=int(input("Enter the Fleshes: "))
wings=int(input("Enter the Wings: " ))
 
if(legs>wings and legs>fleshes):
    c1=legs/2  
    c2=round(c1)
    print("The Chicken to cut: ",c2)


elif(legs<wings and fleshes<wings):
    c1=wings/2
    c2=round(c1)
    print("The Chicken to cut: ",c2)

elif (legs==wings and fleshes <legs):
    c1=legs/2 or wings/2
    c2=round(c1)
    print("The Chicken to cut: ",c2)

elif(fleshes>=legs):
    c2=fleshes
    print("The Chicken to cut: ",c2)  

elif(fleshes>=wings):
    c2=fleshes
    print("The Chicken to cut: ",c2) 
print("............")
    
leg=2
flesh=1
wing=2
Total_legs=(leg*c2)
print("Whole chicken legs:",Total_legs)
Total_flesh=(flesh*c2)
print("Whole chicken fleshes: ",c2)
Total_wings=(wings*c2)
print("Whole chicken wings: ",c2)

print("..............")

Balance_legs=(Total_legs-legs)
print("Leftover chicken legs: ",Balance_legs)
Balance_fleshes=(Total_flesh-fleshes)
print("Leftover chicken fleshes: ",Balance_fleshes)
Balance_wings=(Total_wings-wings)
print("Leftover chicken wings: ",Balance_wings)
