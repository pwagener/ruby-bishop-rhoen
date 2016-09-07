class Bishop
  # This class represents a Bishop on a chess board.

  # Given a starting position, return the positions representing
  # the destinations that a bishop could reach in a single move
  # with no other pieces on the board
  # method argument: instance of Position
  # method return value: an array of Position instances representing all
  # the possible destinations

  def available_moves(position)
    raise NotImplementedError
  end

end
