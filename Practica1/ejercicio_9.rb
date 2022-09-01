#Cambiá las vocales por números (a por 4, e por 3, i por 1, o por 0, u por 6).
puts "esto es un string muy raro".gsub("a","4").gsub("e","3").gsub("i","1").gsub("o","0").gsub("u","6")

# Imprimilo con sus caracteres en orden inverso.
puts "esto es un string muy raro".reverse

#Eliminá los espacios en blanco que contenga.
puts "esto es un string muy raro ".gsub(/\s+/, "")

#Convertí cada uno de sus caracteres por su correspondiente valor ASCII.
#Averiguar
#for letra in cadena.chars
#valor_ascii = letra.ord
#