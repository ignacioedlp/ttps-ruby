def longitud(*parametros) 
  parametros.each do |single|
    pp single.to_s.length
  end
end

longitud(9,Time.now,'Hola',{un: 'hash'},:ruby)

#* Saber la longitud de las variables sin importar el tipo