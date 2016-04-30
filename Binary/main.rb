require_relative 'binario.rb'

print "Puedes ingresar un numero: "
number = gets().chomp.to_i

converter = BinaryConverter.new number
converter.convert