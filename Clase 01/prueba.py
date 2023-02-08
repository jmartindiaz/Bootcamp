numero = 3
num_bin = ""
cociente = 1
i = 0
while (type(numero) == int and numero >= 0 and cociente != 0):
        cociente = numero//2 # es una variable auxiliar que me ayuda a frenar el bucle while
        numero //= 2
        caracter_bin = str(numero%2)
        num_bin+=caracter_bin
        i+=1
num_bin = num_bin[::-1] #invierto la cadena
print (num_bin)

