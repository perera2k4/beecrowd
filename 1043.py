v1, v2, v3 = map(float, input().strip().split(' '))
perimetro = [v1, v2, v3]
perimetro.sort(reverse=True)
if perimetro[0] >= perimetro[1] + perimetro[2]:
    print('Area = {:.1f}'.format(((v1 + v2) * v3) / 2))
else:
    print('Perimetro = {:.1f}'.format(v1 + v2 + v3))