# kata 02 Game of life iteration 2 
class LiveGame
  
  def initialize(h, w)
    @height = h
    @width = w
    @grid = Array.new(@width){ Array.new(@height) }
    @future = Array.new(@width){ Array.new(@height) }
    # matrix2=Array.new(height){Array.new(width)}
  end

  def generate_matrix
    (0..(@height-1)).each do |h|
      (0..(@width-1)).each do |w|
        num = rand(4)
        @future[w][h] = 0
        if num == 0
          @grid[w][h] = '*'
        else
          @grid[w][h] = '.'
        end
        print @grid[w][h]
      end
      puts
    end
  end

end