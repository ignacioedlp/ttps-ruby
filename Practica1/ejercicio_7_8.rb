def contar_substrings(string, substring)
  puts string.scan(substring).count
end

contar_substrings("La casa de la esquina tiene la puerta roja y la ventana blanca.", "la")