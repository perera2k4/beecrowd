j = 7
i = 1
for x in range(1,16):
    print(f'I={i} J={j}')
    j -= 1
    if (x % 3 == 0):
        j += 5
        i += 2