def rot13(cadena, n) 
  n.times do 
    cadena.tr("a-zA-Z", "n-za-mN-ZA-M")
  end
end

puts rot13("¡Bienvenidos a la cursada 2019 de TTPS Opción Ruby!", 3)