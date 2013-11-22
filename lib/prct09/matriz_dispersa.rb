require 'prct09/matriz.rb'

class SparseVector 
  attr_reader :vector

  def initialize(h = {})
    @vector = Hash.new(0)
    @vector = @vector.merge!(h)
  end

  def [](i)
    if  @vector[i].class == nil.class
	0
    else
	@vector[i]
    end 
  end

  def to_s
    @vector.to_s
  end
  def keys
    @vector.keys
  end
end

class Matriz_dispersa < Matriz

  attr_reader :m

  def initialize(h = {})
    fi,co= 0,0
    @m = Hash.new({})
    for k in h.keys do
      if (k>fi) then fi=k end 
      @m[k] = if h[k].is_a? SparseVector
                     h[k]
                   else 
                     @m[k] = SparseVector.new(h[k])
                   end
      for j in h[k].keys do
	if (j>co) then co=j end
      end
    end
    super(fi+1, co+1)
  end

  def [](i)
    if @m[i].class == SparseVector then
	@m[i]
    else
	0
    end
  end

  def max
    max = -10000
    for i in @m.keys do
	for j in @m[i].keys do
	    if (@m[i][j] > max) then
      		max = @m[i][j] 
	    end
	end
    end
    max
   end
   def min
    min = 10000
    for i in @m.keys do
        for j in @m[i].keys do
            if (@m[i][j] < min) then
                min = @m[i][j]       
            end
        end
    end
    min
   end
=begin
	 def to_den
			a = Array.new(@fi, Array.new(@co, 0))
			for i in @m.keys do
				for j in @m[i].keys do
					a[i][j] = @m[i][j]
				end
			end
			return Matriz_densa(a)
	 end
	 def +(o)
			if o.class == Matriz_dispersa then
				for i in o.keys do
					for j in o[i].keys do
						@m[i][j]
					end
				end
			else
			end
	 end
=end

end
