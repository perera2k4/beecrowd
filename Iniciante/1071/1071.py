x = int(input())
y = int(input())
somaImpares = 0
    
for i in range(min(x, y+1), max(x, y)):
    if (i % 2 == 1):
        somaImpares += i

print(somaImpares)