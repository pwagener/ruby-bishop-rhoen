require 'rspec'
require 'position'

describe Position do
  describe '#valid?' do
    context 'column and row are within boundaries' do
      it 'returns true' do
        pos = Position.new(Position::MAX_COLUMN, Position::MAX_ROW)
        expect(pos.valid?).to be true
      end
    end
    context 'column outside the boundary' do
      it 'returns false' do
        col = (Position::MAX_COLUMN.ord + 1).chr
        pos = Position.new(col, Position::MAX_ROW)
        expect(pos.valid?).to be false
      end
    end
    context 'row outside the boundary' do
      it 'returns false' do
        pos = Position.new(Position::MAX_COLUMN, Position::MAX_ROW + 1)
        expect(pos.valid?).to be false
      end
    end
  end
  describe '==' do
    context 'other position has same column and row' do
      it 'returns true' do
        pos1 = Position.new('a', 5)
        pos2 = Position.new('a', 5)
        expect(pos1).to eq(pos2)
      end
    end
    context 'other position has different column' do
      it 'returns false' do
        pos1 = Position.new('a', 5)
        pos2 = Position.new('a', 6)
        expect(pos1).not_to eq(pos2)
      end
    end
    context 'other position has different row' do
      it 'returns false' do
        pos1 = Position.new('a', 5)
        pos2 = Position.new('b', 5)
        expect(pos1).not_to eq(pos2)
      end
    end
  end
end
