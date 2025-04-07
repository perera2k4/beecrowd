import math as m
n = int(input())

for i in range(n):
    x = int(input())

    if x < 2:
        print(f'{x} nao eh primo')
        continue

    primo = True
    for j in range(2, int(m.sqrt(x)) + 1):
        if x % j == 0:
            primo = False
            break

    if primo:
        print(f'{x} eh primo')
    else:
        print(f'{x} nao eh primo')