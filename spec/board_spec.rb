require_relative '../lib/board.rb'

describe Board do
  subject(:table) { described_class.new }
  
  describe '#initialize' do
    # Initialize -> No test necessary
  end

  describe '#make_move?' do
    # Public Script Method -> No test necessary
  end

  describe '#valid_move?' do
    it "sould return true when the move is between 1 & 9" do
      expect(table.valid_move?(5)).to be true
    end

    it "sould return false when the move is bigger than 9" do
      expect(table.valid_move?(12)).to be false
    end

    it "sould return false when the move is less than 1" do
      expect(table.valid_move?(0)).to be false
    end
  end

  describe '#valid_position?' do
    it "sould return true when the board position with the index equal to move (-1) is a space" do
      table.board = ['X', 'O', 'X', 'O', 'X', ' ', 'X', 'O', 'X']
      expect(table.valid_position?(6)).to be true
    end

    it "sould return false when the board position with the index equal to move (-1) is a not a space" do
      table.board = ['X', 'O', 'X', 'O', 'X', ' ', 'X', 'O', 'X']
      expect(table.valid_position?(3)).to be false
    end
  end
end