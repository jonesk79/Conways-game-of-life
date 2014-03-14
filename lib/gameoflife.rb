class Board
  attr_reader :cells, :height, :width
  @@spaces = []


  def initialize(height, width)
    #Board.clear
    @cells = height * width
    @height = height
    @width = width
  end

  def Board.create(height, width)
    new_board = Board.new(height, width)
    new_board
  end

  def Board.all
    @@spaces << @cells
  end

  # def Board.clear
  #   @@spaces = []
  # end
end

