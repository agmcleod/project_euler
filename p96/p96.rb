require 'set'

$sq1 = [[0, 0], [0, 1], [0, 2], [1, 0], [1, 1], [1, 2], [2, 0], [2, 1], [2, 2]]
$sq2 = [[0, 3], [0, 4], [0, 5], [1, 3], [1, 4], [1, 5], [2, 3], [2, 4], [2, 5]]
$sq3 = [[0, 6], [0, 7], [0, 8], [1, 6], [1, 7], [1, 8], [2, 6], [2, 7], [2, 8]]
$sq4 = [[3, 0], [3, 1], [3, 2], [4, 0], [4, 1], [4, 2], [5, 0], [5, 1], [5, 2]]
$sq5 = [[3, 3], [3, 4], [3, 5], [4, 3], [4, 4], [4, 5], [5, 3], [5, 4], [5, 5]]
$sq6 = [[3, 6], [3, 7], [3, 8], [4, 6], [4, 7], [4, 8], [5, 6], [5, 7], [5, 8]]
$sq7 = [[6, 0], [6, 1], [6, 2], [7, 0], [7, 1], [7, 2], [8, 0], [8, 1], [8, 2]]
$sq8 = [[6, 3], [6, 4], [6, 5], [7, 3], [7, 4], [7, 5], [8, 3], [8, 4], [8, 5]]
$sq9 = [[6, 6], [6, 7], [6, 8], [7, 6], [7, 7], [7, 8], [8, 6], [8, 7], [8, 8]]

class P96
  # return the 3-digit number in top left corner of the solution grid
  def self.solve_game(game)
    return 0 if game.empty?
    game[0..2].join.to_i
  end

  #file = File.new("sudoku.txt", "r")
  #game = []
  #sum = 0

  #while (line = file.gets)
    #if (line =~ /grid/i)
      #sum += solve_game(game) 
      #game = []
    #else
      #game << line.split("")
    #end
  #end

  #file.close
  #puts sum
end

def get_grid_indexes_by_coordinates(x, y, game)
  values = []
  values
end

class String
  def can_be_placed_at(x, y, game)
    # square is taken
    return false if game[x][y] != "0"
    
    # number appears in same row
    return false if game[x].include? self
    
    # number appears in same column
    game.each do |row|
      return false if row[y] == self
    end

    s1 = Set.new
    s2 = Set.new
    # number appears in same 3x3 grid
    if (0..2).include? x
      s1 = [$sq1, $sq2, $sq3].to_set
    elsif (3..5).include? x
      s1 = [$sq4, $sq5, $sq6].to_set
    else
      s1 = [$sq7, $sq8, $sq9].to_set
    end

    if (0..2).include? y
      s2 = [$sq1, $sq4, $sq7].to_set
    elsif (3..5).include? x
      s2 = [$sq2, $sq5, $sq8].to_set
    else
      s2 = [$sq3, $sq6, $sq9].to_set
    end   

    true
  end
end
