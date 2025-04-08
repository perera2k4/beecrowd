import math as m
n = int(input())

for i in range(n):
    x, y = map(int, input().split(' '))
    print(m.gcd(x,y))