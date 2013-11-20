require 'prct09/matriz.rb'

class Matriz_densa < Matriz

	attr_accessor :m

        def initialize (matriz)
               raise ArgumentError, 'El parametro debe ser una matriz' unless matriz.is_a? Array
               @m = matriz
        end
end
