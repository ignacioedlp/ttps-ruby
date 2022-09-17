VALUE = 'global' 

module A
  VALUE = 'A' 
  class B
    VALUE = 'B'
    def self.value 
      VALUE
    end
    def value 
      'iB'
    end 
  end
  def self.value
    VALUE
  end 
end

class C 
  class D
    VALUE = 'D'
    def self.value 
      VALUE
    end
  end
  module E
    def self.value
      VALUE
    end
  end
  def self.value 
    VALUE
  end 
end

class F < C 
  VALUE = 'F'
end

#1
puts A.value # => "A"
puts A::B.value # => "B" realiza la funcion self.value
puts C::D.value  # => "D"
puts C::E.value # => "Global"
puts F.value # => "Global"

#!2 Ocurren errores 
puts A::value # => "iB"
puts A.new.value # => "A"
puts B.value # => "B"
puts C::D.value # => "D"
puts C.value # => "Global"
puts F.superclass.value # => "Global"