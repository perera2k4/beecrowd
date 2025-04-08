salario = float(input())

if salario <= 400:
    print("Novo salario: {:.2f}\nReajuste ganho: {:.2f}\nEm percentual: 15 %" .format(salario + salario * 0.15, salario * 0.15))
elif salario < 400 or salario <= 800:
    print("Novo salario: {:.2f}\nReajuste ganho: {:.2f}\nEm percentual: 12 %" .format(salario + salario * 0.12, salario * 0.12))
elif salario < 800 or salario <= 1200:
    print("Novo salario: {:.2f}\nReajuste ganho: {:.2f}\nEm percentual: 10 %" .format(salario + salario * 0.1, salario * 0.1))
elif salario < 1200 or salario <= 2000:
    print("Novo salario: {:.2f}\nReajuste ganho: {:.2f}\nEm percentual: 7 %" .format(salario + salario * 0.07, salario * 0.07))
else:
    print("Novo salario: {:.2f}\nReajuste ganho: {:.2f}\nEm percentual: 4 %" .format(salario + salario * 0.04, salario * 0.04))