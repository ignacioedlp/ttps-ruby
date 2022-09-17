class Array
   def randomly(&block)
      if block_given?
         self.shuffle.each {|e| block.call(e) }
      else
         self.shuffle.to_enum
      end
   end
end

puts "Con bloque"

[1, 2, 3, 4, 5, 6].randomly {|e| puts e+e}

puts "Sin bloque"

enum = [1, 2, 3, 4, 5, 6].randomly
enum.each {|e| puts e}