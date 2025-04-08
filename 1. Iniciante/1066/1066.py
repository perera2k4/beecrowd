ContadorPar = 0
ContadorImpar = 0
ContadorPositivo = 0
ContadorNegativo = 0

for i in range(5):
    Numero = int(input())

    if (Numero % 2 == 0):
        ContadorPar += 1
    if (Numero % 2 == 1):
        ContadorImpar += 1
    if (Numero > 0):
        ContadorPositivo += 1
    if (Numero < 0):
        ContadorNegativo += 1

print("{} valor(es) par(es)\n{} valor(es) impar(es)\n{} valor(es) positivo(s)\n{} valor(es) negativo(s)" .format(ContadorPar, ContadorImpar, ContadorPositivo, ContadorNegativo))