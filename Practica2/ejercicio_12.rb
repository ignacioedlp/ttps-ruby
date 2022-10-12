
module GenericFactory #Convertir la clase en un module
  def create(**args) #Tuve que modificar self.create(**args) a create(**args) 
    new(**args) 
  end
  def initialize(**args) 
    raise NotImplementedError
  end 
end

class Persona #Quite la herencia de clases 
  extend GenericFactory #Extendi la funcionalidad del module dentro de la clase
  attr_accessor :name,  :lastname, :email, :phone, :age
  def initialize(**args)
    self.name = args[:name] 
    self.lastname = args[:lastname]
    self.email = args[:email]
    self.phone = args[:phone]
    self.age = args[:age]
  end
end


pp Persona.create(name: "Ignacio", lastname: "Cafiero", email: "ignaciocafiero12Qgmail.com", phone: "221-5245019", age: 20).name

#* Agregar una modulo generador para que no hacer new 