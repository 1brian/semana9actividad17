class Product
  attr_accessor :name, :tallas
 def initialize(name, *tallas)
 @name = name
 @tallas = tallas.map(&:to_i)
 end
end
products_list = []

def average
  @tallas.inject(&:+) / @tallas.size
end

data = []
file = File.open('catalogo.txt', 'r') { |file| data = file.readlines}


data.each do |prod|
 ls = prod.split(', ')
 ls.delete(4)
 products_list << Product.new(*ls, name)
end

def nuevo_metodo
  products_list.each do |nuevo|
    puts nuevo.name
    puts nuevo.tallas
  end
end

products_list.each do |produc|
   produc.name
   produc.avarage
end

puts products_list.map { |e| e.average  }
