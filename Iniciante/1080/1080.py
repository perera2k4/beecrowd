lista = []
for i in range(100):
    n = int(input())
    lista.append(n)

print(f'{max(lista)}\n{lista.index(max(lista))+1}')