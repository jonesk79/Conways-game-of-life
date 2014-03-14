require 'rspec'
require 'gameoflife.rb'
require 'Spaces'

describe Board do
  it 'initializes with a blank grid' do
    test_board = Board.new(3, 5)
    test_board.should be_an_instance_of Board
  end

  it 'creates the board' do
    test_board = Board.create(2, 4)
    test_board.should be_an_instance_of Board
  end

  describe ".create" do
    it "should create a board of the width and height entered by user" do
      test_board = Board.create(4, 5)
      test_board.cells.should eq 20
    end
  end

  # describe '.clear' do
  #   it 'clears all the spaces in the spaces array'
  #   test_board = Board.create()
  #   Board.all.clear.should eq []
  # end
end

describe Space do
  it "initializes with a property for life" do
    test_space = Space.new()
    test_space.should be_an_instance_of Space
  end
  describe '#life_mark' do
    it "marks a space if it is alive" do
      test_space = Space.new()
      test_space.life_mark('A').should eq 'A'
    end
  end
end
