require_relative '../lib/round'

describe Round do
  describe "#choice" do
    it 'check if input is between [1-7]&[a-f]' do
      game = Round.new
      expect(game.choice).to eq('1a')
    end
  end
end
