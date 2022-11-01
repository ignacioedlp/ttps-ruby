def contar_substrings_sin_importar_minuscular_mayusculas(string, substring)
  puts string.scan(/(?=#{substring})/i).count
end

def contar_substrings_palabra_completa(string, substring)
  puts string.scan(/\b#{substring}\b/i).size
end

contar_substrings_sin_importar_minuscular_mayusculas("La casa de la esquina tiene la puerta roja y la ventana blanca.", "la")

contar_substrings_palabra_completa("La casa de la esquina tiene la puerta roja y la ventana blanca.", "la")