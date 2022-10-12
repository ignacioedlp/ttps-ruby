class Usuario 
  attr_accessor :usuario, :clave, :email

  def initialize(usuario, clave, email)
    self.usuario = usuario
    self.clave = clave
    self.email = email
  end

  def puede_ver?(documento)end
  def puede_modificar?(documento)end
  def puede_borrar?(documento)end
  def to_s() end

end

class Lector < Usuario
  def initialize(usuario, clave, email)
    super(usuario, clave, email)
  end

  def puede_ver?(documento) return documento.publico == true end
  def puede_modificar?(documento) return false end
  def puede_borrar?(documento) return false end
  def to_s() return "#{self.email} (Lector)" end 
end

class Redactor < Usuario
  def initialize(usuario, clave, email)
    super(usuario, clave, email)
  end

  def puede_ver?(documento) return documento.publico == true end
  def puede_modificar?(documento)
    return if documento.creador == self
  end
  def puede_borrar?(documento) return false end

  def to_s() return "#{self.email} (Redactor)" end 
end

class Director < Usuario
  def initialize(usuario, clave, email)
    super(usuario, clave, email)
  end

  def puede_ver?(documento) return !documento.borrado end
  def puede_modificar?(documento) return !documento.borrado end
  def puede_borrar?(documento) return false end
  def to_s() return "#{self.email} (Director)" end 
end

class Administrador < Usuario
  def initialize(usuario, clave, email)
    super(usuario, clave, email)
  end

  def puede_ver?(documento) return !documento.borrado end
  def puede_modificar?(documento) return !documento.borrado end
  def puede_borrar?(documento) return true end
  def to_s() return "#{self.email} (Administrador)" end 
end


class Documento
  attr_accessor :creador, :contenido, :publico, :borrado

  def initialize(usuario, publico = true, contenido = '') 
    self.creador = usuario
    self.publico = publico
    self.contenido = contenido
    self.borrado = false 
  end

  def borrar 
    self.borrado = true
  end

  def puede_ser_visto_por?(usuario) 
    usuario.puede_ver? self
  end

  def puede_ser_modificado_por?(usuario) 
    usuario.puede_modificar? self
  end

  def puede_ser_borrado_por?(usuario) 
    usuario.puede_borrar? self
  end 
end


tofiAdmin = Administrador.new("Tofi Admin", "12334", "ignaciocafiero12@gmail.com")
tofiRedactor = Redactor.new("Tofi Admin", "12334", "ignaciocafiero12@gmail.com")
tofiLector = Lector.new("Tofi Admin", "12334", "ignaciocafiero12@gmail.com")
tofiDirector = Director.new("Tofi Admin", "12334", "ignaciocafiero12@gmail.com")

rubyLibreria = Documento.new(creador:tofiLector, contenido:'', publico: false)

pp tofiAdmin.to_s
pp tofiRedactor.to_s
pp tofiLector.to_s
pp tofiDirector.to_s

#* Simulacion de permisos para usuarios