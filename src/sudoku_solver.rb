# frozen_string_literal: true

# Clase ...
class SudokuSolver
def initialize(board)
  @board = board
end

# Resuelve el Sudoku utilizando el método solve_sudoku.
def solve
  solve_sudoku
end

# Imprime la solución del Sudoku.
def print_solution
    # Intenta resolver el Sudoku.
  solution = solve
  # Si se encuentra una solución, imprime la matriz resultante.
  if solution
    puts "Solución encontrada:"
    solution.each { |row| puts row.join(' ') }
  else
    puts "No hay solución para el tablero dado."
  end
end

private

# Inicia la resolución del Sudoku.
def solve_sudoku
    # Devuelve nil si el tablero no es válido.
  return nil unless valid_board?

  # Encuentra la primera casilla vacía en el tablero.
  empty_cell = find_empty_cell

  # Devuelve el tablero si no jay casillas vacías.
  return @board.dup unless empty_cell

  # Obtiene las coordenadas de la casilla vacía.
  row, col = empty_cell

  # Intenta asignar números del 1 al 9 a la casilla vacía.
  (1..9).each do |num|
    if is_safe?(row, col, num)
      # Asigna el número si es seguro.
      @board[row][col] = num

      # Llama recursivamente a solve_sudoku para continuar con la resolución.
      solution = solve_sudoku

      # Retorna la solución si se encuentra.
      return solution if solution
    end
  end
  
  # Retrocede si no se encuentra ninguna solución.
  @board[row][col] = 0 # Retroceder si no es una solución válida
  nil
end

# Verifica si el tablero de Sudoku es válido.
def valid_board?
  # Verifica que el tablero tenga 9 filas.
  return false if @board.length != 9
  
  # Verifica que cada fila tenga 9 columnas y que todos los elementos esten
  # en el rango de 0 al 9.
  @board.each do |row|
    return false if row.length != 9
    return false if row.any? { |cell| !cell.between?(0, 9) }
  end

  # Si pasa ambas verificaciones, el tablero es válido.
  true
end

# Encuentra la primera casilla vacía en el tablero.
def find_empty_cell
  @board.each_with_index do |row, i|
    row.each_with_index do |cell, j|
      return [i, j] if cell.zero? # Casilla vacía
    end
  end
  nil
end

# Verifica si es seguro colocar un número en una casilla específica.
def is_safe?(row, col, num)
  !used_in_row?(row, num) &&
    !used_in_col?(col, num) &&
    !used_in_box?(row - (row % 3), col - (col % 3), num)
end

# Verifica si un número ya se utiliza en la misma fila.
def used_in_row?(row, num)
  @board[row].include?(num)
end

# Verifica si un número ya se utiliza en la misma columna.
def used_in_col?(col, num)
  @board.transpose[col].include?(num)
end

# Verifica si un número ya se utiliza en la misma región (en bloques de 3x3)
def used_in_box?(start_row, start_col, num)
  (0..2).each do |i|
    (0..2).each do |j|
      return true if @board[start_row + i][start_col + j] == num
    end
  end
  false
end
end

tablero = [
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

solver = SudokuSolver.new(tablero)
solver.print_solution
