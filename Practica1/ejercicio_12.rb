def longitud(arregloStrings)
  arreglo = []
  arregloStrings.map do |string, index|
    arreglo << string.length.to_i
  end
  
  puts arregloStrings
  puts arreglo
end

longitud(['TTPS', 'Opción', 'Ruby', 'Cursada 2019'])
