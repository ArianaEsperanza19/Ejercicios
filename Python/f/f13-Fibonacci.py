'''
13. Recrea la secuencia de los primeros 12 numeros de Fibonacci
'''

r = 12

# def fibonacci(n):
#     if n == 0:
#         return 0;
#     elif n == 1:
#         return 1;
#     else:
#         return fibonacci(n-1) + fibonacci(n-2)
#
# for i in range(r):
#     print(fibonacci(i))

# 0 1 1 2 3 5 ...
n = 0
a = 1
for i in range(r):
    print(n) # 0
    b = a + n # 1
    a = n
    n = b
