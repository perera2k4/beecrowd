HoraInicial, MinutoInicial, HoraFinal, MinutoFinal = map(int, input().split())

if HoraInicial == HoraFinal and MinutoInicial == MinutoFinal:
    print("O JOGO DUROU 24 HORA(S) E 0 MINUTO(S)")
elif HoraInicial == HoraFinal:
    if MinutoInicial < MinutoFinal:
        print("O JOGO DUROU 0 HORA(S) E {} MINUTO(S)" .format(MinutoFinal - MinutoInicial))
    else:
        print("O JOGO DUROU 23 HORA(S) E {} MINUTO(S)" .format(60 - MinutoInicial + MinutoFinal))
elif HoraInicial < HoraFinal:
    if MinutoInicial < MinutoFinal:
        print("O JOGO DUROU {} HORA(S) E {} MINUTO(S)" .format(HoraFinal - HoraInicial, MinutoFinal - MinutoInicial))
    else:
        print("O JOGO DUROU {} HORA(S) E {} MINUTO(S)" .format(HoraFinal - HoraInicial - 1, 60 - MinutoInicial + MinutoFinal))
else:
    if MinutoInicial < MinutoFinal:
        print("O JOGO DUROU {} HORA(S) E {} MINUTO(S)" .format(24 - HoraInicial + HoraFinal, MinutoFinal - MinutoInicial))
    else:
        print("O JOGO DUROU {} HORA(S) E {} MINUTO(S)" .format(24 - HoraInicial + HoraFinal - 1, 60 - MinutoInicial + MinutoFinal))