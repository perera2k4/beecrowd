n = int(input())
cont = 0

for x in range(n, 1 -1, -1):
    if n % x == 0:
        cont =+ 1
if cont == 2 or n==1:
    print("{} eh primo" .format(n))
else:
    print("{} nao eh primo" .format(n))