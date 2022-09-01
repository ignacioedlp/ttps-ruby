def convertir_horario(horario)
  case horario.min
    when 0..10
      puts "en punto"
    when 11..20
      puts "y cuarto"
    when 21..34
      puts "y media"
    when 35..44 
      puts "Son las #{horario.hour + 1} menos veinticinco"
    when 45..55 
      puts "Son las #{horario.hour + 1} menos cuarto"
    else
      puts "Casi las #{horario.hour + 1}"
  end
end

convertir_horario(Time.utc(2020,"jan",1,20,00,0))
convertir_horario(Time.utc(2020,"jan",1,21,15,0))
convertir_horario(Time.utc(2020,"jan",1,22,22,0))
convertir_horario(Time.utc(2020,"jan",1,22,35,0))
convertir_horario(Time.utc(2020,"jan",1,22,46,0))
convertir_horario(Time.utc(2020,"jan",1,22,57,0))

