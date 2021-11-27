require_relative  'matrix.rb'

print "Altura: "
@height = gets.chomp.to_i

print "Ancho: "
@width = gets.chomp.to_i

matrix = LiveGame.new(@height, @width)
matrix.generate_matrix
matrix.generacion