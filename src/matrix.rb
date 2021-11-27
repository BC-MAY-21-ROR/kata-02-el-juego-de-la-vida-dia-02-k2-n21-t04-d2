# kata 02 Game of life iteration 2 
class LiveGame
  
  def initialize(h, w)
    @height = h
    @width = w
    @grid = Array.new(@width){ Array.new(@height) }
    @future = Array.new(@width){Array.new(@height)}
    # matrix2=Array.new(height){Array.new(width)}
  end

  def generate_matrix
    (0..(@height-1)).each do |h|
      (0..(@width-1)).each do |w|
        num = rand(4)
        @future[w][h] = 0
        if num == 0
          @grid[w][h] = 1
        else
          @grid[w][h] = 0
        end
        print @grid[w][h]
      end
      puts
    end
  end

  def generacion
    (0..(@height-1)).each do |h|
      (0..(@width-1)).each do |w|
        celulas_vecinas = 0
        
        
        for a in(-1..1)
          for b in (-1..1)
          
            if h == 0 || w == 0 || h == @height || w == @width
              next
            elsif @grid[w-b][h-a]==1 && @grid[w-b][h-a]!=nil
              celulas_vecinas += 1
            end            
          end
        end 
        p celulas_vecinas
        
        

        
        # celulas_vecinas -= @grid[w][h]
        # if @grid[w][h] == 1 && celulas_vecinas < 2
        #   @future[w][h] = '.'
        # elsif grid[w][h] == 1 && celulas_vecinas > 3
        #   @future[w][h] = '.'
        # elsif grid[w][h].zero? && celulas_vecinas == 3
        #   @future[w][h] = '*'
        # else
        #   @future[w][h] = @grid[w][h]
        # end
        
      end
    end
  end
end