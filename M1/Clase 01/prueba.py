<<<<<<< HEAD
def entero_a_binario_1_2(numero):
        num_bin = ""
        count=0
        while (type(numero) == int and numero >= 0 and count==1 ): ###ESTA BIEN PLANTEADO EL PROCESO PERO MAL PLANTEADAS LAS CONDICIONES
                                                                       ###
                caracter_bin = str(numero%2)
                num_bin+=caracter_bin
                cociente=numero/2
                numero//=2
                if (numero==0):
                        count+=1
        num_bin = int(num_bin[::-1])
        return num_bin
entero_a_binario_1_2(1)


# numero=0
# num_binario=0
# if (type(numero)!=int or numero<0):
        # return None
# elif (numero==0 or numero==1):
        # return numero
# else:
        # while (numero>0):
                # caracter_bin=str(numero%2)
                # num_binario+=caracter_bin
        # num_binario=num_binario[::-1]
# 
# 
# 
# if type(numero)!=int or numero<0:
        # print("El numero ingresado no se puede pasar a binario")
        # return None
# elif (numero==0 or numero==1):
        # return numero
# else:
        # lista_binarios=[]
        # while numero>0:
                # parte_binaria=numero%2 
                # lista_binarios.append(parte_binaria) #calculamos y guardamos la parte binaria
# 
                # numero=numero//2 #calcular el cociente entero
        # 
        # lista_binarios.reverse()
        # num_binario=''.join(lista_binarios)
# return int(num_binario)
=======
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

>>>>>>> 71db5b4f60e313d6385e3554953c1a1146b640e5
