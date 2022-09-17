# include : mezcla en métodos de módulo especificados como métodos de instancia en la clase de destino
# extend : mezcla en métodos de módulo especificados como métodos de clase en la clase de destino

module ReusableModule
  def module_method
    puts "Module Method: Hi there!"
  end
end

class ClassThatIncludes
  include ReusableModule
end
class ClassThatExtends
  extend ReusableModule
end

puts "Include"
ClassThatIncludes.new.module_method       # "Module Method: Hi there!"
puts "Extend"
ClassThatExtends.module_method            # "Module Method: Hi there!"