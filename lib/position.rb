class Position
  MIN_COLUMN = 'a'
  MAX_COLUMN = 'h'
  MIN_ROW = 1
  MAX_ROW = 8


  attr_accessor :row, :column

  def initialize(column, row)
    self.row = row
    self.column = column
  end

  def valid?
    valid_row? && valid_column?
  end

  def ==(pos)
    row == pos.row && column == pos.column
  end

  private

  def valid_row?
    row <= MAX_ROW && row >= MIN_ROW
  end

  def valid_column?
    column <= MAX_COLUMN && column >= MIN_COLUMN
  end
end
