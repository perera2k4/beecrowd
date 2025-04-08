Contador = 0

for i in range(5):
    Numero = int(input())

    if (Numero % 2 == 0):
        Contador += 1

print("{} valores pares" .format(Contador))