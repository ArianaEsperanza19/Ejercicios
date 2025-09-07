import datetime

print(datetime.date.today())

fecha = datetime.datetime.now()
print(fecha.year)
print(fecha.month)
print(fecha.day)

fecha_personalizada = fecha.strftime("%d-%m-%y")
print(fecha_personalizada)
