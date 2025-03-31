# I é 1, V é 5, X é 10, L é 50, C é 100, D é 500 e M representa 1000.

n = int(input())

while n>0:
    if n >= 1000:
        print('M',end='')
        n-= 1000
    elif n>=900:
        print('CM',end='')
        n-= 900
    elif n >= 500:
        print('D',end='')
        n-= 500
    elif n >= 400:
        print('CD',end='')
        n-= 400
    elif n >= 100:
        print('C',end='')
        n-= 100
    elif n >= 90:
        print('XC',end='')
        n-= 90
    elif n >= 50:
        print('L',end='')
        n -= 50
    elif n >= 40:
        print('XL',end='')
        n-= 40
    elif n >= 10:
        print('X',end='')
        n -= 10
    elif n >= 9:
        print('IX',end='')
        n-= 9
    elif n >= 5:
        print('V',end='')
        n-= 5
    elif n >= 4:
        print('IV',end='')
        n-= 4
    elif n >= 1:
        print('I',end='')
        n-= 1

print("")