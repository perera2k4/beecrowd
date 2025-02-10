v1, v2, v3 = map(float, input().strip().split(' '))
perimetro = [v1, v2, v3]
perimetro.sort(reverse=True)
if perimetro[0] >= perimetro[1] + perimetro[2]:
    print('NAO FORMA TRIANGULO')
else:
    if perimetro[0] ** 2 == perimetro[1] ** 2 + perimetro[2] ** 2:
        print('TRIANGULO RETANGULO')
    if perimetro[0] ** 2 > perimetro[1] ** 2 + perimetro[2] ** 2:
        print('TRIANGULO OBTUSANGULO')
    if perimetro[0] ** 2 < perimetro[1] ** 2 + perimetro[2] ** 2:
        print('TRIANGULO ACUTANGULO')
    if perimetro[0] == perimetro[1] == perimetro[2]:
        print('TRIANGULO EQUILATERO')
    if perimetro[0] == perimetro[1] != perimetro[2] or perimetro[0] == perimetro[2] != perimetro[1] or perimetro[1] == perimetro[2] != perimetro[0]:
        print('TRIANGULO ISOSCELES')