module Countable
  def count_invocations_of(sym)
  end

  def invoked?(sym) 
    pp sym
  end

  def invoked(sym)
  end
end

#TODO: Consultar


class Greeter
  include Countable # Incluyo el Mixin
  def hi
    puts 'Hey!'
  end
  def bye
    puts 'See you!'
  end
  # Indico que quiero llevar la cuenta de veces que se invoca el método #hi
  count_invocations_of :hi 

end

  a = Greeter.new
  b = Greeter.new
  a.invoked? :hi
  # => false
  b.invoked? :hi
  # => false
  a.hi
  # Imprime "Hey!"
  a.invoked :hi
  # => 1
  b.invoked :hi
  # => 0