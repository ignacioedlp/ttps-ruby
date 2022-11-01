module Valor_contrario
  def opposite 
    !self 
  end 
end 

class TrueClass 
  include Valor_contrario
end 

class FalseClass 
  include Valor_contrario
end 

#* Extender la clase booleans para que tenga una funcion opposite