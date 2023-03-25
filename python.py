import mysql.connector
con=mysql.connector.connect(host="localhost",user="root",passwd="Aditya",database="golden_dairy",charset="utf8")
if con.is_connected():
    print("Successful")
else:
    print("Failed")
mycursor = con.cursor()
mycursor.execute("select count(Customer_ID), Type from product_in_cart join Product on product_in_cart.Product_ID = Product.ID Group by Type;")
res = mycursor.fetchall()
def login():
    uid=input("Enter your user id: ")
    # actual_passwd='0'
    mycursor.execute("select password, Name from customers where customer_id = %s", (uid,))
    try:
        for row in mycursor:
            name=row[1]
            actual_passwd = row[0]
            # print(actual_passwd)
            passwd=input("Enter your password: ")
        if(actual_passwd==passwd):
            return customerpage(uid,name)
        else:
            print("Invalid password")
            return
    except:
        print("Invalid customer id")
        return 
def customerpage(uid,name):
    c = int(input(f"Welcome {name}! What would you like to do today?\n1. Update profile information\n2. Check cart\n3. View products\n4. Add products to cart\n5. Check previous orders\n6. Logout\n"))
    if(c==6):
        return 
def signup():
    name=str(input("Enter your name: "))
    passwd=str(input("Enter your password: "))
    addr=str(input("Enter your address: "))
    email=input("Enter your email id: ")
    phone=input("Enter your phone number: ")
    mycursor.execute("select * from customers")
    lst = mycursor.fetchall()
    id=lst+1
    mycursor.execute("insert into customers(Name, customer_id, password, Address,Email,Contact_No) values (%s,%s,%s,%s,%s,%s)",(name,id,passwd,addr,email,phone))
    con.commit()
    print("Signup successful. Your customer id is ",id)
def admin_login():
    uid=input("Enter your admin id: ")
    mycursor.execute("select password, Name from admin where ID = %s", (uid,))
    try:
        for row in mycursor:
            name=row[1]
            actual_passwd = row[0]
            # print(actual_passwd)
        passwd=input("Enter your password: ")
        if(actual_passwd==passwd):
            return adminpage(uid,name)
        else:
            print("Invalid password")
            return 
    except:
        print("Invalid admin id")
        return 
    # for row in mycursor:
    #     name=row[1]
    # return adminpage(uid,name)
def adminpage(uid,name):
    while(True):
        c = int(input(f"Welcome {name}! What would you like to do today?\n1. Check sales info \n2. Check employees data\n3. Most selling product\n4. Check supplier data\n5. Add a product\n6. Add a employee\n7. Logout\n"))
        if (c==1):
            date1=input("This will show the value of total sales between a time period\nEnter the starting date and time (in form of YYYY-MM-DD hh:mm:ss): ")
            date2 = input("Enter the ending date and time (in form of YYYY-MM-DD hh:mm:ss): ")
            mycursor.execute("select sum(Cost) AS 'Total Revenue' from Orders where Date_Time_of_Purchase between %s and %s;",(date1,date2))
            # mycursor.execute("select sum(Cost) AS 'Total Revenue' from Orders where Date_Time_of_Purchase between %s and %s;",('2021-01-01 00:00:00','2021-12-31 23:59:59'))
            sales=mycursor.fetchall()
            if(sales!=None):
                print("The total sales are: ",sales[0][0],"\n")
            else: 
                print(0)    
        elif(c==2):
            id=int(input("Enter the id of the employee you want to see information about: "))
        elif (c==3):
            mycursor.execute("select Product.Name, Product.ID, Product.Price, T.order_frequency, Product.Quantity  from Product inner join (select product_id, count(Product_ID) as order_frequency from Orders group by(product_id) order by (order_frequency) DESC limit 1) as T where Product_ID = Product.ID; ")
            l=mycursor.fetchall()
            print("{:<30} {:<10} {:<10} {:<20} {:<10}".format('Name','ID','Price','Order frequency','Quantity'))        
            for row in l:
                print("{:<30} {:<10} {:<10} {:<20} {:<10}".format(row[0],row[1],row[2],row[3],row[4]))
        elif(c==7):
            return 
def productlist():
    print("Choose among the following categories")
    mycursor.execute("select distinct(type) from product;")
    l=mycursor.fetchall()
    for i in range(len(l)):
        print(f"{i+1}. {l[i][0]}")
    c=int(input())-1
    if(c<=len(l)):
        mycursor.execute("select Name, ID, Price, Rating, Quantity from Product where type = %s;",l[c])
    print("{:<30} {:<10} {:<10} {:<10} {:<10}".format('Name','ID','Price','Rating','Quantity'))
    for row in mycursor:
        print("{:<30} {:<10} {:<10} {:<10} {:<10}".format(row[0],row[1],row[2],row[3],row[4]))
while(True):
    print("Welcome to Golden Dairy:")
    ac=int(input("1. Customer login/sign up\n2. Admin login\n3. Product catalogue\n4. Exit\n"))
    if(ac==1):
        c=int(input("1. Login\n2. Sign up\n3. Back\n"))
        if (c==1):
            login()
        elif(c==2):
            signup()
    elif(ac==2):
        admin_login()
    elif (ac==3):
        productlist()
    elif (ac==4):
        break