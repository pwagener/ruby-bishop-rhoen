require 'rspec'
require 'bishop'
require 'position'

describe Bishop do
  describe '#available_moves' do
    it 'returns an array of available moves' do
      start_pos = Position.new('a', 1)
      bishop = Bishop.new
      moves = bishop.available_moves(start_pos)
      expect(moves).to be_a(Array)
    end
  end
end
