def rot13(cadena) 
	cadena.tr("a-zA-Z", "n-za-mN-ZA-M")
end

puts rot13("¡Bienvenidos a la cursada 2019 de TTPS Opción Ruby!")