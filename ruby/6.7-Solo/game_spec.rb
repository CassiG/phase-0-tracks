require_relative 'game'

describe GuessingGame do
	let(:game) {GuessingGame.new}

	it "Stores the initial word provided by Player 1" do
		expect(game.initial_word).to eq "test"
	end

end