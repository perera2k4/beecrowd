n = int(input())
valorIn = 0
valorOut = 0

for i in range(n):
    x = int(input())
    if (x >= 10 and x <= 20):
        valorIn += 1
    else:
        valorOut += 1

print(f'{valorIn} in')
print(f'{valorOut} out')