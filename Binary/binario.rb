class BinaryConverter

	def initialize(number)
		@number = number
	end

	def convert
		binary = Array.new
		while @number > 0 do
			residue = @number%2
			binary.push(residue)
		   	@number/=2
			puts "#{@number} dividido entre 2 da #{@number} y el residuo es igual a #{residue}"
		end
		puts "Ordenamos los residuos, del ultimo al primero #{binary.reverse}"		
		binary.reverse 
	end
end