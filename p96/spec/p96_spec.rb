require_relative '../p96'

describe P96 do
  describe "method solve_game" do
    it "should return 0 on empty game" do
      empty_game = []
      P96.solve_game(empty_game).should equal 0
    end

    it "should return the 3-digit number in top left corner" do
      boring_game = []

      (1..81).each do |i|
        boring_game << i.to_s
      end

      P96.solve_game(boring_game).should equal 123
    end
  end

  describe "#get_grid_indexes_by_coordinates" do
    before(:each) do
      @game = [ \
        ["0", "0", "3", "0", "2", "0", "6", "0", "0"], \
        ["9", "0", "0", "3", "0", "5", "0", "0", "1"], \
        ["0", "0", "1", "8", "0", "6", "4", "0", "0"], \
        ["0", "0", "8", "1", "0", "2", "9", "0", "0"], \
        ["7", "0", "0", "0", "0", "0", "0", "0", "8"], \
        ["0", "0", "6", "4", "5", "6", "7", "8", "9"], \
        ["0", "0", "2", "6", "0", "9", "5", "0", "0"], \
        ["8", "0", "0", "2", "0", "3", "0", "0", "9"], \
        ["0", "0", "5", "0", "1", "0", "3", "0", "0"]  \
      ]     
    end

    it "should return an array of strings" do
      get_grid_indexes_by_coordinates(1, 2, []).class.should == Array
    end


    it "should return an array containing the right values" do
      get_grid_indexes_by_coordinates(1, 2, @game).should == %w{0 0 3 9 0 0 0 0 1}

      
    end
  end

  describe "method can_be_placed_at" do
    before(:each) do
      @game = [ \
        ["0", "0", "3", "0", "2", "0", "6", "0", "0"], \
        ["9", "0", "0", "3", "0", "5", "0", "0", "1"], \
        ["0", "0", "1", "8", "0", "6", "4", "0", "0"], \
        ["0", "0", "8", "1", "0", "2", "9", "0", "0"], \
        ["7", "0", "0", "0", "0", "0", "0", "0", "8"], \
        ["0", "0", "6", "4", "5", "6", "7", "8", "9"], \
        ["0", "0", "2", "6", "0", "9", "5", "0", "0"], \
        ["8", "0", "0", "2", "0", "3", "0", "0", "9"], \
        ["0", "0", "5", "0", "1", "0", "3", "0", "0"]  \
      ]     
    end

    it "should return true if value can be placed" do
      "7".can_be_placed_at(1, 2, @game).should be_true
    end

    it "should return false if the square is taken" do
      "2".can_be_placed_at(0, 2, @game).should be_false
    end

    it "should return false if same number appears in same row" do
      "8".can_be_placed_at(3, 1, @game).should be_false
    end

    it "should return false if same number appears in same column" do
      "9".can_be_placed_at(0, 0, @game).should be_false
    end

    #it "should return false if same number appears in same 3x3 grid" do
      #"9".can_be_placed_at(8, 7, @game).should be_false
    #end
  end
end
