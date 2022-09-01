def reemplazar(texto)
  puts texto.gsub("{","do\n").gsub("}","\nend")
end

reemplazar("3.times { |i| puts i }")