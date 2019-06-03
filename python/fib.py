num1=2
num2=5
num_next=num1+num2
fib_list=[]

n=4

if n==1:
    print(num1)
elif n>=2:
    print(num1)
    print(num2)
for i in range(2,n):
        print(num_next)
        num1=num2
        num2=num_next
        num_next=num1+num2
