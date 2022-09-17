def cuanto_falta(date = nil)
  pp date.nil? ? Time.now : date
end

cuanto_falta Time.new(2032,12,31,23,59,59)