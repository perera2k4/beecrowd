C = int(input())
for c in range(0, C):
    en = input().split()

    a = str(en[0])

    b = str(en[1])
    if a == 'tesoura' and b == 'papel':
        print("rajesh")
    elif a == b or b == a:
        print("empate")
    elif a == 'papel' and b == 'pedra':
        print("rajesh")
    elif a == 'pedra' and b == 'lagarto':
        print("rajesh")
    elif a == 'lagarto' and b == 'spock':
        print("rajesh")
    elif a == 'spock' and b == 'tesoura':
        print("rajesh")
    elif a == 'tesoura' and b == 'lagarto':
        print("rajesh")
    elif a == 'lagarto' and b == 'papel':
        print("rajesh")
    elif a == 'pedra' and b == 'tesoura':
        print("rajesh")
    elif b == 'tesoura' and a == 'papel':
        print("sheldon")
    elif b == 'papel' and a == 'pedra':
        print("sheldon")
    elif b == 'pedra' and a == 'lagarto':
        print("sheldon")
    elif b == 'lagarto' and a == 'spock':
        print("sheldon")
    elif b == 'spock' and a == 'tesoura':
        print("sheldon")
    elif b == 'tesoura' and a == 'lagarto':
        print("sheldon")
    elif b == 'lagarto' and a == 'papel':
        print("sheldon")
    elif b == 'pedra' and a == 'tesoura':
        print("sheldon")
    else:
        break