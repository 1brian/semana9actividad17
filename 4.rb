class Animal
  attr_accessor :propiedades
  def initialize(propiedades)
    @propiedades = propiedades
  end
end

propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}

a = Animal.new(propiedades)
puts a.propiedades
