while True:
    operation = float(input("Select operation\n 1.Add \n 2.Subtract \n 3.Multiply\n 4.Devide \n Enter choice:(1/2/3/4): "))
    if operation == 1 or operation ==2 or operation ==3 or operation ==4:
        a = float(input("What is the first number: "))
        b = float(input("What is the second number: "))
    else:
        continue

    if operation == 1:
        def funadd(a,b):
            return a+b
        print(funadd(a,b))
    elif operation == 2:
        def funsubb(a,b):
            return a-b
        print(funsubb(a,b))
    elif operation == 3:
        def funmultiply(a,b):
            return a*b
        print(funmultiply(a,b))
    elif operation == 4:
        if b !=0:
            def fundivide(a, b):
                return a / b
            print(fundivide(a, b))
        print("You can't devide by 0")



    answer = input("Would you like to do another operation? yes/no ")
    if answer == "no":
        break
    elif answer == "yes":
        continue
