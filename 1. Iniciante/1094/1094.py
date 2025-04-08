n = int(input())
lista = []
total = 0
coelho = 0
rato = 0
sapo = 0

for i in range(n):
    quantia = input().split()
    lista.append(quantia)
    total += int(quantia[0])

    if (quantia[1] == 'C'):
        coelho += int(quantia[0])
    if (quantia[1] == 'R'):
        rato += int(quantia[0])
    if (quantia[1] == 'S'):
        sapo += int(quantia[0])

print(f'Total: {total} cobaias')
print(f'Total de coelhos: {coelho}')    
print(f'Total de ratos: {rato}') 
print(f'Total de sapos: {sapo}') 
print(f'Percentual de coelhos: {(coelho/total)*100:.2f} %')
print(f'Percentual de ratos: {(rato/total)*100:.2f} %')
print(f'Percentual de sapos: {(sapo/total)*100:.2f} %')