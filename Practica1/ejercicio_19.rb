
def notacion_hexadecimal(rgb)
  notacion = "#"
  rgb.each do |numero|
    notacion += numero.to_s(16)
  end
  return notacion
end

def notacion_entera(rgb)
  rgb[0] + rgb[1] * 256 + rgb[2] * 256 * 256
end

puts notacion_hexadecimal([0, 128, 255])
# => '#0080FF'
puts notacion_entera([0, 128, 255])
# => 16744448

#* Convierte un array en un notacion hex y entera