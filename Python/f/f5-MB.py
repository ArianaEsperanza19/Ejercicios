'''
5. Conversor de unidades de MB a Mib
MB = 1000000 bytes
MiB = 1048576 bytes
'''

while True:
    print("Conversor de unidades")
    print("1.MB -> Mib\n2.Mib -> MB")
    op = int(input("Seleccione la medida a convertir: "))
    match op:
        case 1:
            MB = int(input("Medida en MB: "))
            Conver = (MB*1000000)/1048576
            print(Conver)
            break
        case 2:
            Mib = int(input("Medida en Mib: "))
            Conver = (Mib*1048576)/1000000
            print(Conver)
            break

