# frozen_string_literal: true

# Clase SudokuValidator, recibe como parámetro un tablero de sudoku.
class SudokuValidator
  def initialize(board)
    @board = board
  end

  # El método valid_board regresa true si las condiciones de los demás métodos
  # se cumplen, de lo contrario regresa false.
  def valid_board
    convert_zeros_to_nil # Se convierten todos los 0 del array a nil.
    # Si el array bidimensional cumple con todas las validaciones se regresará true.
    valid_size? && valid_numbers? && valid_rows? && valid_column? && valid_region?
  end

  # Valida que las columnas y filas del array sean 9.
  def valid_size?
    @board.length == 9 && @board.all? { |row| row.length == 9 }
  end

  # Valida que no se repita ningún número en la columna correspondiente.
  def valid_column?
    @board.transpose.all? { |col| unique_elements?(col) }
  end

  # Valida que no se repita ningún número en la fila correspondiente.
  def valid_rows?
    @board.all? { |row| unique_elements?(row) }
  end

  # Verificar que cada una de las regiones cumplan con las reglas. Es decir
  # ningún número se debe de repetir en cada región.
  def valid_region?
    # Itera sobre los desplazamientos de fila en bloques de 3.
    (0..2).all? do |row_offset|
      # Itera sobre los desplazamientos de columna en bloques de 3.
      (0..2).all? do |col_offset|
        # Obtiene la región actual del tablero.
        region = get_region(row_offset * 3, col_offset * 3)
        # Verifica que los elementos de la región sean únicos.
        unique_elements?(region.flatten)
      end
    end
  end

  # Obtiene una región específica del tablero.
  # La región se especifica mediante un desplazamiento de fila y columna.
  def get_region(row_offset, col_offset)
    # Obtiene una submatriz de 3x3 que representa la región.
    @board[row_offset, 3].flat_map { |row| row[col_offset, 3] }
  end

  # Verifica que todos los números del tablero sean válidos.
  # Utiliza la función valid_number? para comprobar cada número individual.
  def valid_numbers?
    # Verifica que todos los números en el tablero sean válidos.
    @board.flatten.all? { |num| valid_number?(num) }
  end

  # Verifica si el número es válido.
  # Un número es válido si es nil o está en el rango del 1 al 9.
  def valid_number?(number)
    # El nímero es válido si es nil o está en el rango del 1 al 9.
    number.nil? || (1..9).include?(number)
  end

  # Verifica que los elementos del array sean únicos.
  # Elimina los elementos nulos antes de verificarlos.
  def unique_elements?(array)
    # Comprueba si la longitud del array después de eliminar
    # duplicados es igual a la original
    array.compact.uniq.length == array.compact.length
  end

  # Itera en todo el tablero para reemplazar los ceros a nil.
  def convert_zeros_to_nil
    @board.map! { |row| row.map { |value| value.zero? ? nil : value } }
  end
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

board1 = SudokuValidator.new(board)
puts board1.valid_board
