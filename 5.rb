class Morseable
  attr_accessor :number, :to_morse
 def initialize(number)
 @number = number
 end
 def generate_hash(number)

 a = '-----' if number == 0
 b = '.----' if number == 1
 c = '..---' if number == 2
 d = '...--' if number == 3
 e = '....-' if number == 4
 f = '.....' if number == 5
 g = '-....' if number == 6
 h = '--...' if number == 7
 i = '---..' if number == 8
 j = '----.' if number == 9
 end
def to_morse
self.generate_hash(@number)
 end
end
m = Morseable.new(3)
print m.to_morse
