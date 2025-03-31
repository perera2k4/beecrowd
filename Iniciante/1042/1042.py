n1, n2, n3 = map(int, input().strip().split(' '))
n = [n1, n2, n3]
n.sort()
print('\n'.join(map(str, n)))
print('')
print('\n'.join(map(str, [n1, n2, n3])))