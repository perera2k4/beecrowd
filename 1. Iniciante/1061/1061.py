DiaInicio = int(input().split(' ')[1])
HoraInicio, MinutoInicio, SegundoInicio = map(int, input().split(" : "))
DiaTermino = int(input().split(' ')[1])
HoraTermino, MinutoTermino, SegundoTermino = map(int, input().split(" : "))

def ConversaoSegundos(dia, hora, minuto, segundo):
    return (24 * 60 * 60) * dia + (60 * 60) * hora + 60 * minuto + segundo

Inicio = ConversaoSegundos(DiaInicio, HoraInicio, MinutoInicio, SegundoInicio)
Fim = ConversaoSegundos(DiaTermino, HoraTermino, MinutoTermino, SegundoTermino)
Duracao = Fim - Inicio

print("{} dia(s)" .format(Duracao//(24 * 60 * 60)))
Duracao %= (24 * 60 * 60)
print("{} hora(s)" .format(Duracao//(60 * 60)))
Duracao %= (60 * 60)
print("{} minuto(s)" .format(Duracao//60))
Duracao %= 60
print("{} segundo(s)" .format(Duracao))