n=15

for i in range(1,n+1):
    if i%3==0:
        if i%5==0:
            print('fizzbuzz')
        else:
            print('fizz')
    elif i%5==0:
        print('buzz')
    else:
        print i
