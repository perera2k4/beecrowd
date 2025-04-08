numX = int(input())
for xX in range(1, numX+1):
    led = 0
    tamX = input()
    for yX in range(0, len(tamX)):
        if tamX[yX] == '1':
            led = led + 2
        if tamX[yX] == '2':
            led = led + 5
        if tamX[yX] == '3':
            led = led + 5
        if tamX[yX] == '4':
            led = led + 4
        if tamX[yX] == '5':
            led = led + 5
        if tamX[yX] == '6':
            led = led + 6
        if tamX[yX] == '7':
            led = led + 3
        if tamX[yX] == '8':
            led = led + 7
        if tamX[yX] == '9':
            led = led + 6
        if tamX[yX] == '0':
            led = led + 6
    print("{} leds".format(led))