class Matriz
	#Variable
	attr_accessor :fi, :co
	#attr_accessor :m
	
	def initialize (fi, co)
		raise ArgumentError, 'El parametro debe ser entero' unless fi.is_a? Integer
		raise ArgumentError, 'El parametro debe ser entero' unless co.is_a? Integer
		@fi = fi
		@co = co
	end

	def mostrar()
		texto=""
		for i in 0...@fi do
			if (i>0) then
				texto += "\n"
			end
			for k in 0...@co do
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
		#if self.class == Matriz_densa && o.class == Matriz_densa then
			for i in 0...@fi do
      	for j in 0...@co do
        	@m[i][j] = @m[i][j] + o[i][j]
      	end
    	end
			return @m
	  #end
=begin
		elsif self.class == Matriz_dispersa && o.class == Matriz_dispersa then
			a = self.to_den
			puts "estoy en elseif"
			for i in o.m.keys do
				for j in o.m[i].keys do
					a[i][j] = a[i][j] + o[i][j]
					self.mostrar
				end
			end
		return a.m	
		else
			if self.class == Matriz_dispersa then
				
			end
		end

=begin
		result = Array.new(@fi, Array.new(@co, 0))
		for i in 0...@fi do
			for k in 0...@co do
				result[i][k] = @m[i][k] + o[i][k]
      end
		end
		return result
=end
end
        def -(o)
                @result = @m
                for i in 0...@m.length do
                        for k in 0...@m[i].length do
                                @result[i][k] = @m[i][k] - o[i][k]
                        end
                end
                return @result
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
		return @result
	end
end

