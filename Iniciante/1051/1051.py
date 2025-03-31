salario = float(input())
imposto = 0

if (salario > 4500.00):
    imposto = imposto + (salario - 4500.00) * 0.28
    salario = 4500.00
if (salario > 3000.00):
    imposto = imposto + (salario - 3000.00) * 0.18
    salario = 3000.00
if (salario > 2000.00):
    imposto = imposto + (salario - 2000.00) * 0.08

if (imposto == 0):
    print('Isento')
else:
    print("R$ {:.2f}" .format(imposto))