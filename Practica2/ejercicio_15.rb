def da_nil?
  return yield.nil?
end 

pp da_nil? { }
pp da_nil? {pp 'Hace algo'}

