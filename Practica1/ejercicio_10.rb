[:upcase, :downcase, :capitalize, :swapcase].map do |meth|
  puts "TTPS Ruby".send(meth)
end

#*Lo que hace es ejecurar los methodos uno a uno al string