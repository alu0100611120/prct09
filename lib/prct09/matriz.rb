class Matriz
	#Variable
	attr_accessor :fi, :co
	#attr_accessor :m
	
	#def initialize (matriz)
		#raise ArgumentError, 'El parametro debe ser una matriz' unless matriz.is_a? Array
		#@m = matriz
	#end

	def mostrar()
		texto=""
		for i in 0...@m.length do
			if (i>0) then
				texto += "\n"
			end
			for k in 0...@m[i].length do
				texto += "#{@m[i][k]} "
			end
		end
		texto
	end

	def [](n)
		raise ArgumentError, "El parametro debe ser entero" unless n.is_a? Integer
		if (n>=0) then
			return @m[n]
		else
			return nil
		end
	end

	def +(o)
		@result = @m
		for i in 0...@m.length do
			for k in 0...@m[i].length do
				@result[i][k] = @m[i][k] + o[i][k]
                        end
		end
		return Matriz.new(@result)
	end

        def -(o)
                @result = @m
                for i in 0...@m.length do
                        for k in 0...@m[i].length do
                                @result[i][k] = @m[i][k] - o[i][k]
                        end
                end
                return Matriz.new(@result)
        end

	def *(o)
		tam = @m.length
		@result = Array.new(tam, Array.new(tam ,0))
		for i in 0...tam do
    			for j in 0...tam do
        			for k in 0...tam do
         				@result[i][j] += @m[i][k]*o[k][j]
        			end
    			end
  		end 
		return Matriz.new(@result)
	end
end

