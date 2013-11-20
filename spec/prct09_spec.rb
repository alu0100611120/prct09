require 'rspec'
require 'prct09/matriz.rb'
require 'prct09/matriz_dispersa.rb'
require 'prct09/matriz_densa.rb'

describe Matriz do
	before :each do
		#Inicializar variables
		@mden = Matriz_densa.new([[1,1,1],[1,1,1],[1,1,1]])
		@mdis = Matriz_dispersa.new 0 => {0 => 1}, 1 => {1 => 1}, 2 => {2 => 1} #Diagonal de 1
	end
	#Sentencias it
	it "Se debe almacenar una matriz densa" do
		@mden.class.should == Matriz_densa
	end
	it "Se debe almacenar una matriz dispersa" do
		@mdis.class.should == Matriz_dispersa
	end
end
