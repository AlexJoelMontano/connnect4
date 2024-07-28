require_relative '../lib/connect4'

describe Game do

  describe "#grid" do
    it 'show a grid of 7 X 6' do
      game = Game.new
      expect(game.grid[6]).to eq(["0g", "1g", "2g", "3g", "4g", "5g", "6g"])
    end
  end

end
