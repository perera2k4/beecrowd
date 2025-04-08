j = 7
i = 1
for x in range(1,16):
    print(f'I={i} J={j}')
    j -= 1
    if (j == 4):
        j = 7
        i += 2