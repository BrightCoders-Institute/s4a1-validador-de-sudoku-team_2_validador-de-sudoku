# frozen_string_literal: true

# Clase Board... 
class Board 
  def initialize(board)
    @board = board
  end

  def valid_size?
    @board.length == 9 && @board.all? { |row| row.length == 9 }
  end

  def check_column 
  end

  def valid_rows?
    @board.all? { |row| unique_elements?(row) } 
  end

  def check_region
  end

  # Convierte la matriz bidimensional en una unidimensional.
  def check_numbers
    @board.flatten.all? { |num| (0..9).cover?(num) }
  end

  board = [
  [5, 3, 0, 0, 7, 0, 0, 0, 0],
  [6, 0, 0, 1, 9, 5, 0, 0, 0],
  [0, 9, 8, 0, 0, 0, 0, 6, 0],
  [8, 0, 0, 0, 6, 0, 0, 0, 3],
  [4, 0, 0, 8, 0, 3, 0, 0, 1],
  [7, 0, 0, 0, 2, 0, 0, 0, 6],
  [0, 6, 0, 0, 0, 0, 2, 8, 0],
  [0, 0, 0, 4, 1, 9, 0, 0, 5],
  [0, 0, 0, 0, 8, 0, 0, 7, 9]
]
end