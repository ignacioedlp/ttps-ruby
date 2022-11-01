class Array
   def randomly(&block)
      if block_given?
         self.shuffle.each { |e| block.call(e) }
      else
         self.shuffle.to_enum
      end
   end
end

puts "Con bloque"

[1, 2, 3, 4, 5, 6].randomly { |e| puts e+e}

puts "Sin bloque"

enum = [1, 2, 3, 4, 5, 6].randomly
enum.each { |e| puts e}

#* Agregar a la clase Array una funcion randomly 
#* Si recibe un bloque, debe invocar ese bloque con cada uno de los elementos del arreglo en orden aleatorio

#* Si no recibe un bloque, debe devolver un enumerador que va arrojando, de a uno, los elementos del arreglo en orden aleatorio.