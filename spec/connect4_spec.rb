require_relative '../lib/new_board'

describe Board do
  describe "#new_board" do
    it 'show a grid of 7 X 6 and ask for the last row' do
      game = Board.new
      expect(game.new_board[5]).to eq("< 1F > | < 2F > | < 3F > | < 4F > | < 5F > | < 6F > | < 7F >")
    end
  end
end
