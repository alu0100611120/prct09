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
	it "Se deben calcular bien el numero de filas y columnas para dispersas" do
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
	
	it "Se deben mostrar las matrices densas" do
		@mden.mostrar.should == "0 1 2 \n1 2 3 \n3 4 5 "
	end 
	it "Se deben mostrar matrices dispersas" do
		@mdis.mostrar.should == "1 0 0 \n0 2 0 \n0 0 3 "
	end
	
	it "Se deben sumar dos matrices dispersas" do
    (@mdis+@mdis).should == [[2, 4, 6], [2, 4, 6], [2, 4, 6]]
  end
	it "Se deben restar" do
		(@mdis-@mdis).should == [[0, 0, 0], [0, 0, 0], [0, 0, 0]]
	end
	
	it "Se deben sumar dos matrices densas" do
		(@mden+@mden).should == [[0, 2, 4],[2, 4, 6],[6, 8, 10]]
	end
	it "Se deben multiplicar" do
		(@mdis*@mdis).should == [[18, 36, 54], [18, 36, 54], [18, 36, 54]]
		(@mdis*@mden).should == [[33, 51, 69], [33, 51, 69], [33, 51, 69]]
		(@mden*@mdis).should == [[4, 14, 30], [4, 14, 30], [4, 14, 30]]
	end

end
