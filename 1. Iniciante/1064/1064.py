Media = 0
ContadorPositivo = 0

for i in range(6):
    Numero = float(input())

    if (Numero > 0):
        Media += Numero
        ContadorPositivo += 1

if (ContadorPositivo > 0):
    Media /= ContadorPositivo

print("{} valores positivos\n{:.1f}" .format(ContadorPositivo, Media))
