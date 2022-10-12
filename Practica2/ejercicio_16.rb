hash = {'clave' => 1, 'password' => 2}

def procesar_hash(hash, proc)
  hash.invert.transform_values { |value| proc.call value}
end

pp procesar_hash(hash, -> (x) {x.to_s.upcase})

#* Hacer que la key sea el valor y el valor la key en mayusuclas