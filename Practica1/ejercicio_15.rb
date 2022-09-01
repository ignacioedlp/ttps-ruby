$alfabeto_mayusculas = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
$alfabeto_minusculas = "abcdefghijklmnopqrstuvwxyz"
$longitud_alfabeto = 26
$limite_inferior_mayusculas = 65
$limite_inferior_minusculas = 97

def rot13(cadena)

	cadena_con_rotaciones = ""
	# Ir letra por letra...
	for letra in cadena.chars
		# Si no es una letra (es un espacio, punto, etcétera) entonces
		# no la rotamos ni cambiamos, ponemos el carácter así como es
		if !letra.match(/^[[:alpha:]]$/)
			cadena_con_rotaciones += letra
			next
		end
		# Suponemos que la letra es mayúscula
		alfabeto = $alfabeto_mayusculas
		limite = $limite_inferior_mayusculas
		# Pero comprobamos y cambiamos si es necesario
		if letra == letra.downcase # ¿Es minúscula?
			alfabeto = $alfabeto_minusculas
			limite = $limite_inferior_minusculas
		end

		valor_ascii = letra.ord
		# Rotar
		nueva_posicion = (valor_ascii - limite + 13) % $longitud_alfabeto
		# Y ver cuál carácter está en esa posición
		cadena_con_rotaciones += alfabeto[nueva_posicion]
	end
	# Regresar nueva cadena
	cadena_con_rotaciones
end

puts rot13("¡Bienvenidos a la cursada 2019 de TTPS Opción Ruby!")
