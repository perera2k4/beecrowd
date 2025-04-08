while True:
    m, n = map(int, input().split(' '))
    soma = 0

    if (m == 0 or n == 0 or m < 0 or n < 0):
        break
    for i in range(min(m,n), max(m,n) + 1):
        print(i, end=' ')
        soma += i
    print(f'Sum={soma}')