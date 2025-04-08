n = int(input())
somaImpares = 0

for i in range(n):    
    x, y = map(int, input().split())
    for j in range(min(x, y) + 1, max(x, y)):
        if (j % 2 != 0):
            somaImpares += j
    print(somaImpares)
    somaImpares = 0