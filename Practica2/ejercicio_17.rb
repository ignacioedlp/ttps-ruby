def exception_handler (*args)
   begin
      yield args
   rescue RuntimeError
      puts "Algo salio mal..."
      :rt
   rescue NoMethodError => e
      puts "No encontre un metodo: #{e.message}"
      :nm
   rescue 
      puts "¡No se que hacer!"
      raise
   else
         :ok
   end
end

p exception_handler('a', 3, :d) { |x| x=x/x}