hash = {'clave' => 1, 'password' => 2}

def procesar_hash(hash, proc)
  hash.each do |key, value|
    pp "#{value} => #{proc.call(key)}"
  end
end

procesar_hash(hash, -> (x) {x.to_s.upcase})