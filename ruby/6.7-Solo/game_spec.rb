require_relative 'game'

describe GuessingGame do
	let(:game) {GuessingGame.new}

	it "Provides the initial word provided by Player 1" do
		@p1_word = 'test'
		expect(game.p1_word).to eq 'test'
	end

	it "Splits the initial word into an array" do
		expect(game.p1_word).to eq ['t', 'e', 's', 't']
	end

	it "Makes sure the guessed letter is returned" do
		expect(game.p2_guess).to eq ["t"]
	end

	it "Sees if the win/loose message runs properly" do
		@p2_word = ['t', 'e', 's', 't']
		expect(game.win_game).to eq ("Congratulations - you win the game.")
	end

end