somaNota = 0
contador = 0
while True:
    nota = float(input())

    if (nota < 0 or nota > 10):
        print("nota invalida")
    else:
        somaNota += nota
        contador += 1
        if (contador >= 2):
            break
     
print(f"media = {somaNota/contador:.2f}")