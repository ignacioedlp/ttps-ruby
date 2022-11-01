
def procesar_archivo(path, &block)

  content = File.read(path)
  lines = content.split("\n")

  lines.each { |line| block.call(line) }

end

procesar_archivo('./contenido.txt') { |linea| Integer(linea) }