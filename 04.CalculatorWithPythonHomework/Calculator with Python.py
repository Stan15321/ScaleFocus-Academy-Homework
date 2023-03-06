def funadd(a, b):
    return a + b

def funsubb(a,b):
    return a-b

def funmultiply(a, b):
    return a * b

def fundivide(a, b):
    return a / b

while True:
    try:
        operation = int(input("Select operation\n 1.Add \n 2.Subtract \n 3.Multiply\n 4.Divide \n Enter choice:(1/2/3/4): "))
    except:
        print("Invalid operation, please input 1, 2, 3 or 4")
        continue
    if operation == 1 or operation == 2 or operation == 3 or operation == 4:
        try:
            a = float(input("What is the first number: "))
            b = float(input("What is the second number: "))
        except:
            print("Invalid input!")
            continue

    else:
        continue

    if operation == 1:
        print(funadd(a,b))
    elif operation == 2:
        print(funsubb(a,b))
    elif operation == 3:
        print(funmultiply(a,b))
    elif operation == 4:
        if b !=0:
            print(fundivide(a, b))
        else:
            print("You can't divide by 0")

    answer = input("Would you like to do another operation? yes/no: ")
    if answer == "no" or answer == "No":
        break

