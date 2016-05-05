require_relative 'Spiral.rb'


class Main
	$count = 0
	def send_to_generate_spiral(n,value)
		Spiral.new.generate_spiral(n,n,value) do |x,y,n|
	      if n == $count
	         puts "Las coordenadas correspondientes al punto numero #{n} son (#{x},#{y})"
	      elsif n == "(#{x},#{y})"
	         puts "El punto correspondiente a tus coordenadas (#{x},#{y}) es #{$count}"
	      end
	      $count+=1
	   	end   		
	end	
end

	 

	puts "Ingresa Tamano de la matriz NXN"
	dimension = gets.to_i

	print "Ingresa 1 para determinar las coordenadas a partir de n \n o Ingresa 2 para determinar n a partir de coordenadas:"
	response = gets.to_i


	if response == 1
	   puts "Ingresa el valor de n"
	   n = gets.to_i
	   Main.new.send_to_generate_spiral dimension,n

	else
	   puts "Ingresa la coordenada x"
	   x = gets.to_i

	   puts "Ingresa la coordenada y"
	   y = gets.to_i
		
	   Main.new.send_to_generate_spiral dimension,"(#{x},#{y})"
	   
	end