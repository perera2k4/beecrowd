somaNota = 0
contador = 0
x = 0
while True:
    if (x == 2):
        break
    nota = float(input())

    if (nota < 0 or nota > 10):
        print("nota invalida")
    else:
        somaNota += nota
        contador += 1
        if (contador >= 2):
            print(f"media = {somaNota/contador:.2f}")
            while True:
                x = int(input("novo calculo (1-sim 2-nao)\n"))
                if (x == 2):
                    break
                elif (x == 1):
                    somaNota = 0
                    contador = 0
                    x = 0
                    break