class Perro  
  # método inicializar clase
  def initialize(raza, nombre)  
    # atributos   
    @raza = raza  
    @nombre = nombre  
  end  
  # método ladrar
  def ladrar
    puts 'Guau! Guau!'  
  end  
  # método saludar
  def saludar
    puts "Soy un perro de la raza #{@raza} y mi nombre es #{@nombre}"  
  end  
end



p "--------Obtener la lista de ancestros (superclases) de una clase.--------"
p Perro.ancestors
p "-------------------------------------------------------------------------"

p "----------------Conocer la lista de métodos de una clase-----------------"
p Perro.methods
p "-------------------------------------------------------------------------"

p "---------Conocer la lista de métodos de instancia de una clase.---------"
p Perro.instance_methods(false)
p "-------------------------------------------------------------------------"

p "----------Conocer las variables de instancia de una clase.----------"
p Perro.new('dd','dd').instance_variables
p "-------------------------------------------------------------------------"

#* Obtener el valor de una variable de instancia de un objeto(sin utilizar un método generado con attr_reader o similar) accediéndolo desde fuera de éste.
p Perro.new('dd','dd').

#* Establecer el valor de una variable de instancia de un objeto (sin utilizar un método generado con attr_writero similar) desde fuera de éste.

p @raza



#!CONSULTAR LOS ULTIMOS DOS PUNTOS