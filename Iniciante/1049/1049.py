Escolha1 = str(input())
Escolha2 = str(input())
Escolha3 = str(input())

match Escolha1:
    case 'vertebrado':
        match Escolha2:
            case 'ave':
                match Escolha3:
                    case 'carnivoro':
                        print('aguia')
                    case 'onivoro':
                        print('pomba')
            case 'mamifero':
                match Escolha3:
                    case 'onivoro':
                        print('homem')
                    case 'herbivoro':
                        print('vaca')
    case 'invertebrado':
        match Escolha2:
            case 'inseto':
                match Escolha3:
                    case 'hematofago':
                        print('pulga')
                    case 'herbivoro':
                        print('lagarta')
            case 'anelideo':
                match Escolha3:
                    case 'hematofago':
                        print('sanguessuga')
                    case 'onivoro':
                        print('minhoca')