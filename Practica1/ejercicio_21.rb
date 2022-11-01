
def multiplos_de_3_y_5(max)

  array_de_numeros = (1..max).to_a
  total = 0;

  array_de_numeros.each do |numero| 
    if(numero % 3 == 0 && numero % 5 == 0)
      total += numero
    end
  end
  return total
end

def multiplos_de_3_y_5(max)

  array_de_numeros = (1..max).to_a
  total = 0;

  array_de_numeros.each do |numero| 
    if(numero % 3 == 0 && numero % 5 == 0)
      total += numero
    end
  end
  return total
end

def multiplos_de_3_y_5_v2(divisores, max)

  array_de_numeros = (1..max).to_a
  total = 0;
  divisible = false;

  array_de_numeros.each do |numero| 
    divisores.each do |divisor| 
      if(numero % divisor == 0 )
        total += numero
      end
    end
  end
  return total
end




puts "V1 #{multiplos_de_3_y_5(100)}"
puts "V@ #{multiplos_de_3_y_5_v2([3, 5, 17, 28, 65], 100)}"


