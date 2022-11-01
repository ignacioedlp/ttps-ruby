def cuanto_falta(tiempo = Time.new(Time.now.year, Time.now.month, Time.now.day, 23, 59, 59))
  (tiempo - Time.now).fdiv(60)
end

pp cuanto_falta(Time.new(2032,12,31,23,59,59))

#* Saber cuanto falta en minutos 