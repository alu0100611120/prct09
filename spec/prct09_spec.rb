require 'rspec'
require 'prct09/matriz.rb'
require 'prct09/matriz_dispersa.rb'
require 'prct09/matriz_densa.rb'

describe Matriz do
	before :each do
		#Inicializar variables
		@mden = Matriz_densa.new([[0,1,2],[1,2,3],[3,4,5]])
		@mdis = Matriz_dispersa.new 0 => {0 => 1}, 1 => {1 => 2}, 2 => {2 => 3} #Diagonal de 1
	end
	#Sentencias it
	it "Se debe almacenar una matriz densa" do
		@mden.class.should == Matriz_densa
	end
	it "Se debe almacenar una matriz dispersa" do
		@mdis.class.should == Matriz_dispersa
	end
	it "Se deben calcular bien el numero de filas y columnas" do
		@mdis.fi.should == 3
		@mdis.co.should == 3
	end
	it "Se debe acceder a una posición de la matriz dispersa" do
		@mdis[0][0].should == 1
	end

	it "Se debe calcular el valor maximo de una matriz densa" do
		@mden.max.should == 5
	end

	it "Se debe calcular el valor maximo de una matriz dispersa" do
                @mdis.max.should == 3
        end

	it "Se debe calcular el valor minimo de una matriz densa" do
                @mden.min.should == 0
        end

        it "Se debe calcular el valor minimo de una matriz dispersa" do
                @mdis.min.should == 1
        end
	
	it "Se deben sumar dos matrices dispersas" do
		@mdis+@mdis.should == 0
	end
end
