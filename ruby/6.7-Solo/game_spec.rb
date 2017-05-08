require_relative 'game'

describe GuessingGame do
	let(:game) {GuessingGame.new}

	it "Stores the initial word provided by Player 1" do
		expect(game.guess_word).to eq 'test'
	end

end